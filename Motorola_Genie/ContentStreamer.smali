.class public interface abstract Lcom/logmein/rescuesdk/internal/streaming/screenstreaming/ContentStreamer;
.super Ljava/lang/Object;
.source "ContentStreamer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/logmein/rescuesdk/internal/streaming/screenstreaming/ContentStreamer$OnInterruptedListener;
    }
.end annotation


# virtual methods
.method public abstract pause()V
.end method

.method public abstract resume()V
.end method

.method public abstract setOnInterruptedListener(Lcom/logmein/rescuesdk/internal/streaming/screenstreaming/ContentStreamer$OnInterruptedListener;)V
.end method

.method public abstract shouldReportBackgroundState()Z
.end method

.method public abstract start(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/logmein/rescuesdk/internal/streaming/comm/RcOption;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract stop()V
.end method
