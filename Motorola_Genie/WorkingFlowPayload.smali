.class public Lcom/motorola/genie/search/payload/WorkingFlowPayload;
.super Lcom/motorola/genie/search/payload/Payload;
.source "WorkingFlowPayload.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/genie/search/payload/WorkingFlowPayload$NextStep;,
        Lcom/motorola/genie/search/payload/WorkingFlowPayload$TestNowNode;,
        Lcom/motorola/genie/search/payload/WorkingFlowPayload$SolutionNode;,
        Lcom/motorola/genie/search/payload/WorkingFlowPayload$DecisionNode;
    }
.end annotation


# instance fields
.field public decisionNode:Lcom/motorola/genie/search/payload/WorkingFlowPayload$DecisionNode;

.field public flowCode:Ljava/lang/String;

.field public processCode:Ljava/lang/String;

.field public solutionNode:Lcom/motorola/genie/search/payload/WorkingFlowPayload$SolutionNode;

.field public testnowNode:Lcom/motorola/genie/search/payload/WorkingFlowPayload$TestNowNode;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/motorola/genie/search/payload/Payload;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WorkingFlowPayload{flowCode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/genie/search/payload/WorkingFlowPayload;->flowCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", processCode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/motorola/genie/search/payload/WorkingFlowPayload;->processCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", decisionNode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/genie/search/payload/WorkingFlowPayload;->decisionNode:Lcom/motorola/genie/search/payload/WorkingFlowPayload$DecisionNode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
