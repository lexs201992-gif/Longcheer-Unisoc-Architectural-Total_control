.class public Lcom/motorola/blur/push/impl/PushDataFormatBuilder;
.super Ljava/lang/Object;
.source "PushDataFormatBuilder.java"

# interfaces
.implements Lcom/motorola/blur/push/FormatBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/push/impl/PushDataFormatBuilder$IncorrectDeviceException;,
        Lcom/motorola/blur/push/impl/PushDataFormatBuilder$IncorrectAccountException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/motorola/blur/push/FormatBuilder<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field private actions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/motorola/blur/service/push/protocol/PushProtocol$_PushDataAction;",
            ">;"
        }
    .end annotation
.end field

.field private sequenceIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/blur/push/impl/PushDataFormatBuilder;->sequenceIds:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/blur/push/impl/PushDataFormatBuilder;->actions:Ljava/util/HashMap;

    return-void
.end method

.method private _build()Lorg/json/JSONObject;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    iget-object v0, p0, Lcom/motorola/blur/push/impl/PushDataFormatBuilder;->sequenceIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/push/impl/PushDataFormatBuilder;->sequenceIds:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v0, p0, Lcom/motorola/blur/push/impl/PushDataFormatBuilder;->sequenceIds:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    iget-object v3, p0, Lcom/motorola/blur/push/impl/PushDataFormatBuilder;->sequenceIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v0, v5, :cond_1

    const/4 v0, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_2
    :goto_1
    if-gez v0, :cond_3

    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    new-instance v4, Ljava/util/LinkedList;

    iget-object v5, p0, Lcom/motorola/blur/push/impl/PushDataFormatBuilder;->actions:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    new-instance v5, Lcom/motorola/blur/push/impl/PushDataFormatBuilder$1;

    invoke-direct {v5, p0}, Lcom/motorola/blur/push/impl/PushDataFormatBuilder$1;-><init>(Lcom/motorola/blur/push/impl/PushDataFormatBuilder;)V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :goto_3
    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-lez v5, :cond_4

    invoke-virtual {v4}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/blur/service/push/protocol/PushProtocol$_PushDataAction;

    invoke-virtual {v5}, Lcom/motorola/blur/service/push/protocol/PushProtocol$_PushDataAction;->getAction()I

    move-result v5

    if-ne v5, v2, :cond_4

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_3

    :cond_4
    iget-object v5, p0, Lcom/motorola/blur/push/impl/PushDataFormatBuilder;->sequenceIds:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :goto_4
    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v6

    if-lez v6, :cond_d

    invoke-virtual {v4}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/blur/service/push/protocol/PushProtocol$_PushDataAction;

    invoke-virtual {v6}, Lcom/motorola/blur/service/push/protocol/PushProtocol$_PushDataAction;->getData()Lcom/motorola/blur/service/push/protocol/PushProtocol$_PushData;

    move-result-object v7

    invoke-virtual {v6}, Lcom/motorola/blur/service/push/protocol/PushProtocol$_PushDataAction;->getAction()I

    move-result v6

    if-ne v6, v2, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v7}, Lcom/motorola/blur/service/push/protocol/PushProtocol$_PushData;->getSequenceId()I

    move-result v6

    if-eqz v0, :cond_6

    move v6, v1

    goto :goto_5

    :cond_6
    sub-int/2addr v6, v5

    :goto_5
    invoke-virtual {v7}, Lcom/motorola/blur/service/push/protocol/PushProtocol$_PushData;->getAppId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    if-nez v8, :cond_7

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v7}, Lcom/motorola/blur/service/push/protocol/PushProtocol$_PushData;->getAppId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7
    invoke-virtual {v7}, Lcom/motorola/blur/service/push/protocol/PushProtocol$_PushData;->getDataType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    if-nez v9, :cond_8

    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v7}, Lcom/motorola/blur/service/push/protocol/PushProtocol$_PushData;->getDataType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_8
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v10

    if-nez v10, :cond_a

    if-eqz v0, :cond_9

    iget-object v5, p0, Lcom/motorola/blur/push/impl/PushDataFormatBuilder;->sequenceIds:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int/2addr v10, v2

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_6

    :cond_9
    iget-object v6, p0, Lcom/motorola/blur/push/impl/PushDataFormatBuilder;->sequenceIds:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int/2addr v10, v2

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-int/2addr v6, v5

    :cond_a
    :goto_6
    const-string v10, "q"

    invoke-virtual {v8, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-lez v6, :cond_b

    const-string v10, "k"

    invoke-virtual {v8, v10, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_b
    invoke-virtual {v7}, Lcom/motorola/blur/service/push/protocol/PushProtocol$_PushData;->getData()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_c

    const-string v10, "d"

    invoke-virtual {v7}, Lcom/motorola/blur/service/push/protocol/PushProtocol$_PushData;->getData()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v10, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_c
    invoke-virtual {v9, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    goto/16 :goto_4

    :cond_d
    return-object v3
.end method


# virtual methods
.method public add(Lcom/motorola/blur/service/push/protocol/PushProtocol$_PushDataAction;)V
    .locals 6

    iget-object v0, p0, Lcom/motorola/blur/push/impl/PushDataFormatBuilder;->actions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const-string v1, "."

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/motorola/blur/push/impl/PushDataFormatBuilder;->actions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/push/protocol/PushProtocol$_PushDataAction;

    invoke-virtual {v0}, Lcom/motorola/blur/service/push/protocol/PushProtocol$_PushDataAction;->getAccountId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/motorola/blur/service/push/protocol/PushProtocol$_PushDataAction;->getAccountId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/motorola/blur/service/push/protocol/PushProtocol$_PushDataAction;->getDeviceId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/motorola/blur/service/push/protocol/PushProtocol$_PushDataAction;->getDeviceId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/motorola/blur/push/impl/PushDataFormatBuilder$IncorrectDeviceException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Device id "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/motorola/blur/service/push/protocol/PushProtocol$_PushDataAction;->getDeviceId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, " is invalid for this builder.  This builder has already been initialized with device id "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Lcom/motorola/blur/service/push/protocol/PushProtocol$_PushDataAction;->getDeviceId()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p0, p1}, Lcom/motorola/blur/push/impl/PushDataFormatBuilder$IncorrectDeviceException;-><init>(Lcom/motorola/blur/push/impl/PushDataFormatBuilder;Ljava/lang/String;)V

    throw v2

    :cond_1
    new-instance v2, Lcom/motorola/blur/push/impl/PushDataFormatBuilder$IncorrectAccountException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Account id "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/motorola/blur/service/push/protocol/PushProtocol$_PushDataAction;->getAccountId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, " is invalid for this builder.  This builder has already been initialized with account id "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Lcom/motorola/blur/service/push/protocol/PushProtocol$_PushDataAction;->getAccountId()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p0, p1}, Lcom/motorola/blur/push/impl/PushDataFormatBuilder$IncorrectAccountException;-><init>(Lcom/motorola/blur/push/impl/PushDataFormatBuilder;Ljava/lang/String;)V

    throw v2

    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/motorola/blur/service/push/protocol/PushProtocol$_PushDataAction;->getData()Lcom/motorola/blur/service/push/protocol/PushProtocol$_PushData;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/push/protocol/PushProtocol$_PushData;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/push/protocol/PushProtocol$_PushData;->getDataType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/motorola/blur/service/push/protocol/PushProtocol$_PushDataAction;->getKey()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/motorola/blur/service/push/protocol/PushProtocol$_PushDataAction;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/blur/push/impl/PushDataFormatBuilder;->sequenceIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/motorola/blur/service/push/protocol/PushProtocol$_PushData;->getSequenceId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/motorola/blur/push/impl/PushDataFormatBuilder;->actions:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/blur/service/push/protocol/PushProtocol$_PushDataAction;

    if-nez v2, :cond_4

    iget-object v0, p0, Lcom/motorola/blur/push/impl/PushDataFormatBuilder;->actions:Ljava/util/HashMap;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Lcom/motorola/blur/service/push/protocol/PushProtocol$_PushDataAction;->getData()Lcom/motorola/blur/service/push/protocol/PushProtocol$_PushData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/blur/service/push/protocol/PushProtocol$_PushData;->getSequenceId()I

    move-result v2

    invoke-virtual {v0}, Lcom/motorola/blur/service/push/protocol/PushProtocol$_PushData;->getSequenceId()I

    move-result v0

    if-ge v2, v0, :cond_6

    invoke-virtual {p1}, Lcom/motorola/blur/service/push/protocol/PushProtocol$_PushDataAction;->getAction()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/motorola/blur/push/impl/PushDataFormatBuilder;->actions:Ljava/util/HashMap;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/motorola/blur/push/impl/PushDataFormatBuilder;->actions:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_1
    return-void
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/blur/push/FormatBuilder$FormattingException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/motorola/blur/push/impl/PushDataFormatBuilder;->build()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/blur/push/FormatBuilder$FormattingException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/motorola/blur/push/impl/PushDataFormatBuilder;->_build()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/motorola/blur/push/FormatBuilder$FormattingException;

    invoke-direct {v1, v0}, Lcom/motorola/blur/push/FormatBuilder$FormattingException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
