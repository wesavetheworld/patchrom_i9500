.class Lcom/android/server/ShutdownActivity$1;
.super Ljava/lang/Thread;
.source "ShutdownActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ShutdownActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ShutdownActivity;

.field final synthetic val$systemRequest:Z


# direct methods
.method constructor <init>(Lcom/android/server/ShutdownActivity;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/server/ShutdownActivity$1;->this$0:Lcom/android/server/ShutdownActivity;

    iput-boolean p3, p0, Lcom/android/server/ShutdownActivity$1;->val$systemRequest:Z

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 71
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 74
    .local v0, pm:Landroid/os/IPowerManager;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ShutdownActivity$1;->this$0:Lcom/android/server/ShutdownActivity;

    #getter for: Lcom/android/server/ShutdownActivity;->mReboot:Z
    invoke-static {v1}, Lcom/android/server/ShutdownActivity;->access$000(Lcom/android/server/ShutdownActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    const-string v1, "LUIS"

    const-string v2, "log 1"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v1, p0, Lcom/android/server/ShutdownActivity$1;->this$0:Lcom/android/server/ShutdownActivity;

    #getter for: Lcom/android/server/ShutdownActivity;->mConfirm:Z
    invoke-static {v1}, Lcom/android/server/ShutdownActivity;->access$100(Lcom/android/server/ShutdownActivity;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V

    .line 91
    :goto_0
    return-void

    .line 78
    :cond_0
    const-string v1, "LUIS"

    const-string v2, "log 2"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-boolean v1, p0, Lcom/android/server/ShutdownActivity$1;->val$systemRequest:Z

    if-eqz v1, :cond_1

    .line 81
    const-string v1, "LUIS"

    const-string v2, "log 3"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-interface {v0}, Landroid/os/IPowerManager;->systemShutdown()V

    goto :goto_0

    .line 89
    :catch_0
    move-exception v1

    goto :goto_0

    .line 85
    :cond_1
    const-string v1, "LUIS"

    const-string v2, "log 4"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v1, p0, Lcom/android/server/ShutdownActivity$1;->this$0:Lcom/android/server/ShutdownActivity;

    #getter for: Lcom/android/server/ShutdownActivity;->mConfirm:Z
    invoke-static {v1}, Lcom/android/server/ShutdownActivity;->access$100(Lcom/android/server/ShutdownActivity;)Z

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IPowerManager;->shutdown(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method
