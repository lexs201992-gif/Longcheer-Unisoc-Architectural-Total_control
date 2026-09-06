.class public final Lcom/motorola/feedback/localdb/BugreportDao_Impl;
.super Ljava/lang/Object;
.source "BugreportDao_Impl.java"

# interfaces
.implements Lcom/motorola/feedback/localdb/BugreportDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertionAdapterOfBugreport:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/motorola/feedback/localdb/Bugreport;",
            ">;"
        }
    .end annotation
.end field

.field private final __updateAdapterOfBugreport:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lcom/motorola/feedback/localdb/Bugreport;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fget__db(Lcom/motorola/feedback/localdb/BugreportDao_Impl;)Landroidx/room/RoomDatabase;
    .locals 0

    iget-object p0, p0, Lcom/motorola/feedback/localdb/BugreportDao_Impl;->__db:Landroidx/room/RoomDatabase;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget__insertionAdapterOfBugreport(Lcom/motorola/feedback/localdb/BugreportDao_Impl;)Landroidx/room/EntityInsertionAdapter;
    .locals 0

    iget-object p0, p0, Lcom/motorola/feedback/localdb/BugreportDao_Impl;->__insertionAdapterOfBugreport:Landroidx/room/EntityInsertionAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget__updateAdapterOfBugreport(Lcom/motorola/feedback/localdb/BugreportDao_Impl;)Landroidx/room/EntityDeletionOrUpdateAdapter;
    .locals 0

    iget-object p0, p0, Lcom/motorola/feedback/localdb/BugreportDao_Impl;->__updateAdapterOfBugreport:Landroidx/room/EntityDeletionOrUpdateAdapter;

    return-object p0
.end method

.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "__db"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/feedback/localdb/BugreportDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v0, Lcom/motorola/feedback/localdb/BugreportDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/motorola/feedback/localdb/BugreportDao_Impl$1;-><init>(Lcom/motorola/feedback/localdb/BugreportDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/motorola/feedback/localdb/BugreportDao_Impl;->__insertionAdapterOfBugreport:Landroidx/room/EntityInsertionAdapter;

    new-instance v0, Lcom/motorola/feedback/localdb/BugreportDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/motorola/feedback/localdb/BugreportDao_Impl$2;-><init>(Lcom/motorola/feedback/localdb/BugreportDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/motorola/feedback/localdb/BugreportDao_Impl;->__updateAdapterOfBugreport:Landroidx/room/EntityDeletionOrUpdateAdapter;

    return-void
.end method

.method public static getRequiredConverters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBRStatus(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "timestamp",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "select brStatus from bugreport where currentBRTimestamp = ?"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    invoke-virtual {v0, v1, p1, p2}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    invoke-static {}, Landroidx/room/util/DBUtil;->createCancellationSignal()Landroid/os/CancellationSignal;

    move-result-object p1

    iget-object p2, p0, Lcom/motorola/feedback/localdb/BugreportDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/motorola/feedback/localdb/BugreportDao_Impl$5;

    invoke-direct {v1, p0, v0}, Lcom/motorola/feedback/localdb/BugreportDao_Impl$5;-><init>(Lcom/motorola/feedback/localdb/BugreportDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    const/4 p0, 0x0

    invoke-static {p2, p0, p1, v1, p3}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getBugreport(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "timestamp",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/motorola/feedback/localdb/Bugreport;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "select * from bugreport where currentBRTimestamp = ? Limit 1"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    invoke-virtual {v0, v1, p1, p2}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    invoke-static {}, Landroidx/room/util/DBUtil;->createCancellationSignal()Landroid/os/CancellationSignal;

    move-result-object p1

    iget-object p2, p0, Lcom/motorola/feedback/localdb/BugreportDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/motorola/feedback/localdb/BugreportDao_Impl$6;

    invoke-direct {v1, p0, v0}, Lcom/motorola/feedback/localdb/BugreportDao_Impl$6;-><init>(Lcom/motorola/feedback/localdb/BugreportDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    const/4 p0, 0x0

    invoke-static {p2, p0, p1, v1, p3}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getChildBugreports(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "parentBrFileName",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/motorola/feedback/localdb/Bugreport;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "select * from bugreport where parentBrFileName = ? and uploadStatus == 0"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    invoke-static {}, Landroidx/room/util/DBUtil;->createCancellationSignal()Landroid/os/CancellationSignal;

    move-result-object p1

    iget-object v1, p0, Lcom/motorola/feedback/localdb/BugreportDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v2, Lcom/motorola/feedback/localdb/BugreportDao_Impl$10;

    invoke-direct {v2, p0, v0}, Lcom/motorola/feedback/localdb/BugreportDao_Impl$10;-><init>(Lcom/motorola/feedback/localdb/BugreportDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    const/4 p0, 0x0

    invoke-static {v1, p0, p1, v2, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getLastInProgressBugreport(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "status",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/motorola/feedback/localdb/Bugreport;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "select * from bugreport where brStatus = ? order by currentBRTimestamp DESC LIMIT 1"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    invoke-static {}, Landroidx/room/util/DBUtil;->createCancellationSignal()Landroid/os/CancellationSignal;

    move-result-object p1

    iget-object v1, p0, Lcom/motorola/feedback/localdb/BugreportDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v2, Lcom/motorola/feedback/localdb/BugreportDao_Impl$7;

    invoke-direct {v2, p0, v0}, Lcom/motorola/feedback/localdb/BugreportDao_Impl$7;-><init>(Lcom/motorola/feedback/localdb/BugreportDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    const/4 p0, 0x0

    invoke-static {v1, p0, p1, v2, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getParentBugreport(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "parentBrFileName",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/motorola/feedback/localdb/Bugreport;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "select * from bugreport where brFileName = ?"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    invoke-static {}, Landroidx/room/util/DBUtil;->createCancellationSignal()Landroid/os/CancellationSignal;

    move-result-object p1

    iget-object v1, p0, Lcom/motorola/feedback/localdb/BugreportDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v2, Lcom/motorola/feedback/localdb/BugreportDao_Impl$8;

    invoke-direct {v2, p0, v0}, Lcom/motorola/feedback/localdb/BugreportDao_Impl$8;-><init>(Lcom/motorola/feedback/localdb/BugreportDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    const/4 p0, 0x0

    invoke-static {v1, p0, p1, v2, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getPendingChildCount(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "parentBrFileName",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "select count(recordId) from bugreport where parentBrFileName = ? and uploadStatus = 0"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    invoke-static {}, Landroidx/room/util/DBUtil;->createCancellationSignal()Landroid/os/CancellationSignal;

    move-result-object p1

    iget-object v1, p0, Lcom/motorola/feedback/localdb/BugreportDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v2, Lcom/motorola/feedback/localdb/BugreportDao_Impl$9;

    invoke-direct {v2, p0, v0}, Lcom/motorola/feedback/localdb/BugreportDao_Impl$9;-><init>(Lcom/motorola/feedback/localdb/BugreportDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    const/4 p0, 0x0

    invoke-static {v1, p0, p1, v2, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public insert(Lcom/motorola/feedback/localdb/Bugreport;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "bugreport",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/feedback/localdb/Bugreport;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/motorola/feedback/localdb/BugreportDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/motorola/feedback/localdb/BugreportDao_Impl$3;

    invoke-direct {v1, p0, p1}, Lcom/motorola/feedback/localdb/BugreportDao_Impl$3;-><init>(Lcom/motorola/feedback/localdb/BugreportDao_Impl;Lcom/motorola/feedback/localdb/Bugreport;)V

    const/4 p0, 0x1

    invoke-static {v0, p0, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public update(Lcom/motorola/feedback/localdb/Bugreport;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "bugreport",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/feedback/localdb/Bugreport;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/motorola/feedback/localdb/BugreportDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/motorola/feedback/localdb/BugreportDao_Impl$4;

    invoke-direct {v1, p0, p1}, Lcom/motorola/feedback/localdb/BugreportDao_Impl$4;-><init>(Lcom/motorola/feedback/localdb/BugreportDao_Impl;Lcom/motorola/feedback/localdb/Bugreport;)V

    const/4 p0, 0x1

    invoke-static {v0, p0, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
