.class Landroidx/appcompat/app/AppCompatDelegate$SerialExecutor;
.super Ljava/lang/Object;
.source "AppCompatDelegate.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/AppCompatDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SerialExecutor"
.end annotation


# instance fields
.field mActive:Ljava/lang/Runnable;

.field final mExecutor:Ljava/util/concurrent/Executor;

.field private final mLock:Ljava/lang/Object;

.field final mTasks:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/AppCompatDelegate$SerialExecutor;->mLock:Ljava/lang/Object;

    .line 131
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/AppCompatDelegate$SerialExecutor;->mTasks:Ljava/util/Queue;

    .line 136
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegate$SerialExecutor;->mExecutor:Ljava/util/concurrent/Executor;

    .line 137
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 141
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegate$SerialExecutor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 142
    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegate$SerialExecutor;->mTasks:Ljava/util/Queue;

    new-instance v2, Landroidx/appcompat/app/AppCompatDelegate$SerialExecutor$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Landroidx/appcompat/app/AppCompatDelegate$SerialExecutor$$ExternalSyntheticLambda0;-><init>(Landroidx/appcompat/app/AppCompatDelegate$SerialExecutor;Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 149
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegate$SerialExecutor;->mActive:Ljava/lang/Runnable;

    if-nez v1, :cond_0

    .line 150
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegate$SerialExecutor;->scheduleNext()V

    .line 152
    :cond_0
    monitor-exit v0

    .line 153
    return-void

    .line 152
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method synthetic lambda$execute$0$androidx-appcompat-app-AppCompatDelegate$SerialExecutor(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 144
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegate$SerialExecutor;->scheduleNext()V

    .line 147
    nop

    .line 148
    return-void

    .line 146
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegate$SerialExecutor;->scheduleNext()V

    .line 147
    throw v0
.end method

.method protected scheduleNext()V
    .locals 3

    .line 156
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegate$SerialExecutor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 157
    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegate$SerialExecutor;->mTasks:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    iput-object v1, p0, Landroidx/appcompat/app/AppCompatDelegate$SerialExecutor;->mActive:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegate$SerialExecutor;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroidx/appcompat/app/AppCompatDelegate$SerialExecutor;->mActive:Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 160
    :cond_0
    monitor-exit v0

    .line 161
    return-void

    .line 160
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
