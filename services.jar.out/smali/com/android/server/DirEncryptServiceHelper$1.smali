.class Lcom/android/server/DirEncryptServiceHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "DirEncryptServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DirEncryptServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DirEncryptServiceHelper;


# direct methods
.method constructor <init>(Lcom/android/server/DirEncryptServiceHelper;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/server/DirEncryptServiceHelper$1;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 167
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, action:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 169
    const-string v1, "android.dirEncryption.DirEncryptionManager.BATCH_ENCRYPT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    const-string v1, "Batch encrypt noti pressed"

    invoke-static {v1}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 172
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper$1;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    #getter for: Lcom/android/server/DirEncryptServiceHelper;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/DirEncryptServiceHelper;->access$200(Lcom/android/server/DirEncryptServiceHelper;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 175
    :cond_0
    const-string v1, "android.dirEncryption.DirEncryptionManager.UNMOUNT_POLICY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 176
    const-string v1, "Unmount policy noti pressed"

    invoke-static {v1}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    .line 178
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper$1;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    #getter for: Lcom/android/server/DirEncryptServiceHelper;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/DirEncryptServiceHelper;->access$200(Lcom/android/server/DirEncryptServiceHelper;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 180
    :cond_1
    return-void
.end method
