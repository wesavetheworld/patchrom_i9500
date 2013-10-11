.class public Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter;
.super Ljava/lang/Object;
.source "PackageManagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter$MyPackageMonitor;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PackageManagerAdapter"

.field private static mContext:Landroid/content/Context;

.field private static mIPackageManager:Landroid/content/pm/IPackageManager;

.field private static mInstance:Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter;


# instance fields
.field private final mProcessStats:Lcom/android/internal/os/ProcessStats;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Lcom/android/internal/os/ProcessStats;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/os/ProcessStats;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    .line 110
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter;
    .locals 2
    .parameter "ctx"

    .prologue
    .line 97
    const-class v1, Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter;->mInstance:Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter;

    if-nez v0, :cond_0

    .line 98
    sput-object p0, Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    .line 99
    new-instance v0, Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter;

    invoke-direct {v0}, Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter;-><init>()V

    sput-object v0, Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter;->mInstance:Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter;

    .line 100
    const-string v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    sput-object v0, Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 104
    :cond_0
    sget-object v0, Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter;->mInstance:Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "str"

    .prologue
    const/4 v1, 0x0

    .line 89
    if-nez p0, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-object v1

    .line 89
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    move-object v1, p0

    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "PackageManagerAdapter"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getProcessCpuUsage(I)J
    .locals 9
    .parameter "pid"

    .prologue
    const-wide/16 v5, 0x0

    .line 113
    iget-object v7, p0, Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v7}, Lcom/android/internal/os/ProcessStats;->update()V

    .line 115
    iget-object v7, p0, Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v7}, Lcom/android/internal/os/ProcessStats;->countWorkingStats()I

    move-result v0

    .line 116
    .local v0, count:I
    const/4 v2, 0x0

    .line 117
    .local v2, stat:Lcom/android/internal/os/ProcessStats$Stats;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 118
    iget-object v7, p0, Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v7, v1}, Lcom/android/internal/os/ProcessStats;->getWorkingStats(I)Lcom/android/internal/os/ProcessStats$Stats;

    move-result-object v2

    .line 119
    iget v7, v2, Lcom/android/internal/os/ProcessStats$Stats;->pid:I

    if-ne v7, p1, :cond_1

    .line 124
    :cond_0
    if-nez v2, :cond_2

    .line 138
    :goto_1
    return-wide v5

    .line 117
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    :cond_2
    iget-object v7, p0, Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v7}, Lcom/android/internal/os/ProcessStats;->getLastUserTime()I

    move-result v7

    iget-object v8, p0, Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v8}, Lcom/android/internal/os/ProcessStats;->getLastSystemTime()I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v8}, Lcom/android/internal/os/ProcessStats;->getLastIrqTime()I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v8}, Lcom/android/internal/os/ProcessStats;->getLastIdleTime()I

    move-result v8

    add-int/2addr v7, v8

    int-to-long v3, v7

    .line 131
    .local v3, totalCPUTime:J
    cmp-long v5, v3, v5

    if-nez v5, :cond_3

    .line 132
    const-wide/16 v3, 0x1

    .line 138
    :cond_3
    iget v5, v2, Lcom/android/internal/os/ProcessStats$Stats;->rel_utime:I

    iget v6, v2, Lcom/android/internal/os/ProcessStats$Stats;->rel_stime:I

    add-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x64

    int-to-long v5, v5

    div-long/2addr v5, v3

    goto :goto_1
.end method

.method public initProcessStats()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v0}, Lcom/android/internal/os/ProcessStats;->init()V

    .line 143
    return-void
.end method
