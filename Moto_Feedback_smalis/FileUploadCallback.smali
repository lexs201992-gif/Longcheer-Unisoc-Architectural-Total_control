.class public interface abstract Lcom/motorola/feedback/transport/firebase/FileUploadCallback;
.super Ljava/lang/Object;
.source "FileUploadCallback.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "Lcom/google/firebase/storage/UploadTask$TaskSnapshot;",
        ">;",
        "Lcom/google/android/gms/tasks/OnFailureListener;"
    }
.end annotation


# virtual methods
.method public abstract onSigninFailed()V
.end method
