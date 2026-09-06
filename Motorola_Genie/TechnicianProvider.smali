.class Lcom/logmein/rescuesdkresources/TechnicianProvider;
.super Ljava/lang/Object;
.source "TechnicianProvider.java"


# instance fields
.field private technician:Lcom/logmein/rescuesdk/api/session/Technician;


# direct methods
.method public constructor <init>(Lcom/logmein/rescuesdk/api/session/Session;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lcom/logmein/rescuesdk/api/session/Session;->getEventBus()Lcom/logmein/rescuesdk/api/eventbus/EventDispatcher;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/logmein/rescuesdk/api/eventbus/EventDispatcher;->add(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getTechnician()Lcom/logmein/rescuesdk/api/session/Technician;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/logmein/rescuesdkresources/TechnicianProvider;->technician:Lcom/logmein/rescuesdk/api/session/Technician;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onDisconnected(Lcom/logmein/rescuesdk/api/session/event/DisconnectedEvent;)V
    .locals 0
    .annotation runtime Lcom/logmein/rescuesdk/api/eventbus/Subscribe;
    .end annotation

    invoke-virtual {p1}, Lcom/logmein/rescuesdk/api/session/event/DisconnectedEvent;->getSession()Lcom/logmein/rescuesdk/api/session/Session;

    move-result-object p1

    invoke-interface {p1}, Lcom/logmein/rescuesdk/api/session/Session;->getEventBus()Lcom/logmein/rescuesdk/api/eventbus/EventDispatcher;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/logmein/rescuesdk/api/eventbus/EventDispatcher;->remove(Ljava/lang/Object;)V

    return-void
.end method

.method public onTechnicianConnected(Lcom/logmein/rescuesdk/api/session/event/ConnectedEvent;)V
    .locals 0
    .annotation runtime Lcom/logmein/rescuesdk/api/eventbus/Subscribe;
    .end annotation

    invoke-virtual {p1}, Lcom/logmein/rescuesdk/api/session/event/ConnectedEvent;->getTechnician()Lcom/logmein/rescuesdk/api/session/Technician;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/logmein/rescuesdkresources/TechnicianProvider;->setTechnician(Lcom/logmein/rescuesdk/api/session/Technician;)V

    return-void
.end method

.method public setTechnician(Lcom/logmein/rescuesdk/api/session/Technician;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/logmein/rescuesdkresources/TechnicianProvider;->technician:Lcom/logmein/rescuesdk/api/session/Technician;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
