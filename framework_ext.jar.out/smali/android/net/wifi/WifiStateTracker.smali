.class public Landroid/net/wifi/WifiStateTracker;
.super Ljava/lang/Object;
.source "WifiStateTracker.java"

# interfaces
.implements Landroid/net/NetworkStateTracker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;
    }
.end annotation


# static fields
.field private static final EVENT_IMS_REQUEST_TIMEOUT:I = 0x20

.field private static final LOGV:Z = true

.field private static final NETWORKTYPE:Ljava/lang/String; = "WIFI"

.field private static final TAG:Ljava/lang/String; = "WifiStateTracker"

.field private static final TIME_IN_MS_IMS_REQUEST_TIMEOUT:I = 0xfa0


# instance fields
.field private mCWState:I

.field private mContext:Landroid/content/Context;

.field private mCsHandler:Landroid/os/Handler;

.field private mCwHandler:Landroid/os/Handler;

.field private mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mLastState:Landroid/net/NetworkInfo$State;

.field private mLinkCapabilities:Landroid/net/LinkCapabilities;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mWagIP:Ljava/lang/String;

.field private mWifiCWState:I

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiStateReceiver:Landroid/content/BroadcastReceiver;

.field private mdisableOthers:Z

.field private mstoppingnetid:I

.field private mstoppingtype:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 3
    .parameter "netType"
    .parameter "networkName"

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 55
    sget-object v0, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mLastState:Landroid/net/NetworkInfo$State;

    .line 57
    iput v1, p0, Landroid/net/wifi/WifiStateTracker;->mCWState:I

    .line 67
    iput v1, p0, Landroid/net/wifi/WifiStateTracker;->mstoppingtype:I

    .line 68
    iput v1, p0, Landroid/net/wifi/WifiStateTracker;->mstoppingnetid:I

    .line 69
    iput-boolean v2, p0, Landroid/net/wifi/WifiStateTracker;->mdisableOthers:Z

    .line 73
    new-instance v0, Landroid/net/wifi/WifiStateTracker$1;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiStateTracker$1;-><init>(Landroid/net/wifi/WifiStateTracker;)V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mCwHandler:Landroid/os/Handler;

    .line 91
    new-instance v0, Landroid/net/NetworkInfo;

    const-string v1, ""

    invoke-direct {v0, p1, v2, p2, v1}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 92
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    .line 93
    new-instance v0, Landroid/net/LinkCapabilities;

    invoke-direct {v0}, Landroid/net/LinkCapabilities;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    .line 95
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v2}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 96
    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiStateTracker;->setTeardownRequested(Z)V

    .line 97
    return-void
.end method

.method static synthetic access$000(Landroid/net/wifi/WifiStateTracker;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mCwHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Landroid/net/wifi/WifiStateTracker;)Landroid/net/NetworkInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$202(Landroid/net/wifi/WifiStateTracker;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Landroid/net/wifi/WifiStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object p1
.end method

.method static synthetic access$300(Landroid/net/wifi/WifiStateTracker;)Landroid/net/LinkProperties;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    return-object v0
.end method

.method static synthetic access$302(Landroid/net/wifi/WifiStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Landroid/net/wifi/WifiStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    return-object p1
.end method

.method static synthetic access$400(Landroid/net/wifi/WifiStateTracker;)Landroid/net/LinkCapabilities;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    return-object v0
.end method

.method static synthetic access$402(Landroid/net/wifi/WifiStateTracker;Landroid/net/LinkCapabilities;)Landroid/net/LinkCapabilities;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Landroid/net/wifi/WifiStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    return-object p1
.end method

.method static synthetic access$500(Landroid/net/wifi/WifiStateTracker;)Landroid/net/NetworkInfo$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mLastState:Landroid/net/NetworkInfo$State;

    return-object v0
.end method

.method static synthetic access$502(Landroid/net/wifi/WifiStateTracker;Landroid/net/NetworkInfo$State;)Landroid/net/NetworkInfo$State;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Landroid/net/wifi/WifiStateTracker;->mLastState:Landroid/net/NetworkInfo$State;

    return-object p1
.end method

.method static synthetic access$600(Landroid/net/wifi/WifiStateTracker;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mCsHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public captivePortalCheckComplete()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->captivePortalCheckComplete()V

    .line 172
    return-void
.end method

.method public cwDataOff()V
    .locals 5

    .prologue
    .line 346
    const-string v2, "WifiStateTracker"

    const-string v3, "CW_SISO : WifiStateTracker : cwStartCommand true stoppingtype entered "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget v2, p0, Landroid/net/wifi/WifiStateTracker;->mCWState:I

    if-lez v2, :cond_1

    .line 352
    new-instance v1, Landroid/content/Intent;

    const-string v2, "QuickMenu_DataOnOff"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 354
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "dataState"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 355
    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 367
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 358
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    .end local v1           #intent:Landroid/content/Intent;
    :goto_1
    const-string v2, "WifiStateTracker"

    const-string v3, "CW_SISO : WifiStateTracker : cwStartCommand true stoppingtype exited "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 359
    .restart local v1       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 360
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v2, "WifiStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Send broadcast before boot - action:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 363
    .end local v0           #e:Ljava/lang/IllegalStateException;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    const-string v2, "WifiStateTracker"

    const-string v3, "CW_SISO : cwDataOff CW State is NONE"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public cwDataOn()V
    .locals 5

    .prologue
    .line 323
    const-string v2, "WifiStateTracker"

    const-string v3, "CW_SISO : WifiStateTracker : cwStartCommand true stoppingtype entered "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget v2, p0, Landroid/net/wifi/WifiStateTracker;->mCWState:I

    if-lez v2, :cond_1

    .line 328
    new-instance v1, Landroid/content/Intent;

    const-string v2, "QuickMenu_DataOnOff"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 330
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "dataState"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 331
    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 343
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 334
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    .end local v1           #intent:Landroid/content/Intent;
    :goto_1
    const-string v2, "WifiStateTracker"

    const-string v3, "CW_SISO : WifiStateTracker : cwStartCommand true stoppingtype exited "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 335
    .restart local v1       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 336
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v2, "WifiStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Send broadcast before boot - action:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 339
    .end local v0           #e:Ljava/lang/IllegalStateException;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    const-string v2, "WifiStateTracker"

    const-string v3, "CW_SISO : cwDataOn CW State is NONE"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public defaultRouteSet(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 265
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 266
    return-void
.end method

.method public getLinkCapabilities()Landroid/net/LinkCapabilities;
    .locals 2

    .prologue
    .line 251
    new-instance v0, Landroid/net/LinkCapabilities;

    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    invoke-direct {v0, v1}, Landroid/net/LinkCapabilities;-><init>(Landroid/net/LinkCapabilities;)V

    return-object v0
.end method

.method public getLinkProperties()Landroid/net/LinkProperties;
    .locals 2

    .prologue
    .line 241
    new-instance v0, Landroid/net/LinkProperties;

    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    return-object v0
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 2

    .prologue
    .line 234
    new-instance v0, Landroid/net/NetworkInfo;

    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v0, v1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    return-object v0
.end method

.method public getTcpBufferSizesPropName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    const-string v0, "net.tcp.buffersize.wifi"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public isDefaultRouteSet()Z
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isPrivateDnsRouteSet()Z
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isTeardownRequested()Z
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public privateDnsRouteSet(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 227
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 228
    return-void
.end method

.method public reconnect()Z
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 154
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startWifi()Z

    .line 155
    const/4 v0, 0x1

    return v0
.end method

.method public reconnectDualMMS(I)Z
    .locals 1
    .parameter "usingNetworkType"

    .prologue
    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public setDependencyMet(Z)V
    .locals 0
    .parameter "met"

    .prologue
    .line 318
    return-void
.end method

.method public setPolicyDataEnable(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 204
    return-void
.end method

.method public setPolicyDataEnableSecondary(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 213
    return-void
.end method

.method public setRadio(Z)Z
    .locals 1
    .parameter "turnOn"

    .prologue
    .line 179
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 180
    const/4 v0, 0x1

    return v0
.end method

.method public setTeardownRequested(Z)V
    .locals 1
    .parameter "isRequested"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 102
    return-void
.end method

.method public setUserDataEnable(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 198
    const-string v0, "WifiStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignoring setUserDataEnable("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    return-void
.end method

.method public setUserDataEnableSecondary(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 209
    return-void
.end method

.method public startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .parameter "context"
    .parameter "target"

    .prologue
    .line 112
    iput-object p2, p0, Landroid/net/wifi/WifiStateTracker;->mCsHandler:Landroid/os/Handler;

    .line 113
    iput-object p1, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    .line 115
    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 116
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 117
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    new-instance v1, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;-><init>(Landroid/net/wifi/WifiStateTracker;Landroid/net/wifi/WifiStateTracker$1;)V

    iput-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    .line 127
    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 128
    return-void
.end method

.method public teardown()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 135
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 136
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->stopWifi()Z

    .line 137
    return v1
.end method

.method public teardownDualMMS(I)Z
    .locals 1
    .parameter "usingNetworkType"

    .prologue
    .line 146
    const/4 v0, 0x0

    return v0
.end method
