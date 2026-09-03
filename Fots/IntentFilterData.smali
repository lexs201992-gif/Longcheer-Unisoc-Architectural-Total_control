.class public Lcom/android/role/controller/model/IntentFilterData;
.super Ljava/lang/Object;
.source "IntentFilterData.java"


# instance fields
.field private final mAction:Ljava/lang/String;

.field private final mCategories:Ljava/util/List;

.field private final mDataScheme:Ljava/lang/String;

.field private final mDataType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/role/controller/model/IntentFilterData;->mAction:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/role/controller/model/IntentFilterData;->mCategories:Ljava/util/List;

    iput-object p3, p0, Lcom/android/role/controller/model/IntentFilterData;->mDataScheme:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/role/controller/model/IntentFilterData;->mDataType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public createIntent()Landroid/content/Intent;
    .locals 5

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/role/controller/model/IntentFilterData;->mAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/role/controller/model/IntentFilterData;->mDataScheme:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v3, ""

    invoke-static {v1, v3, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    :cond_0
    iget-object v1, p0, Lcom/android/role/controller/model/IntentFilterData;->mCategories:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    iget-object v4, p0, Lcom/android/role/controller/model/IntentFilterData;->mCategories:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/role/controller/model/IntentFilterData;->mDataType:Ljava/lang/String;

    invoke-virtual {v0, v2, p0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public createIntentFilter()Landroid/content/IntentFilter;
    .locals 4

    new-instance v0, Landroid/content/IntentFilter;

    iget-object v1, p0, Lcom/android/role/controller/model/IntentFilterData;->mAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/role/controller/model/IntentFilterData;->mCategories:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/android/role/controller/model/IntentFilterData;->mCategories:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/role/controller/model/IntentFilterData;->mDataScheme:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    :cond_1
    iget-object p0, p0, Lcom/android/role/controller/model/IntentFilterData;->mDataType:Ljava/lang/String;

    if-eqz p0, :cond_2

    :try_start_0
    invoke-virtual {v0, p0}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/android/role/controller/model/IntentFilterData;

    iget-object v2, p0, Lcom/android/role/controller/model/IntentFilterData;->mAction:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/role/controller/model/IntentFilterData;->mAction:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/role/controller/model/IntentFilterData;->mCategories:Ljava/util/List;

    iget-object v3, p1, Lcom/android/role/controller/model/IntentFilterData;->mCategories:Ljava/util/List;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/role/controller/model/IntentFilterData;->mDataScheme:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/role/controller/model/IntentFilterData;->mDataScheme:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/android/role/controller/model/IntentFilterData;->mDataType:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/role/controller/model/IntentFilterData;->mDataType:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public getDataScheme()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/role/controller/model/IntentFilterData;->mDataScheme:Ljava/lang/String;

    return-object p0
.end method

.method public getDataType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/role/controller/model/IntentFilterData;->mDataType:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/role/controller/model/IntentFilterData;->mAction:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/role/controller/model/IntentFilterData;->mCategories:Ljava/util/List;

    iget-object v2, p0, Lcom/android/role/controller/model/IntentFilterData;->mDataScheme:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/role/controller/model/IntentFilterData;->mDataType:Ljava/lang/String;

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IntentFilterData{mAction=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/role/controller/model/IntentFilterData;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', mCategories=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/role/controller/model/IntentFilterData;->mCategories:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\', mDataScheme=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/role/controller/model/IntentFilterData;->mDataScheme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', mDataType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/role/controller/model/IntentFilterData;->mDataType:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
