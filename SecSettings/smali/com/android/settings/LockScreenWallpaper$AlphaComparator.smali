.class Lcom/android/settings_ex/LockScreenWallpaper$AlphaComparator;
.super Ljava/lang/Object;
.source "LockScreenWallpaper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/LockScreenWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AlphaComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final sCollator:Ljava/text/Collator;

.field final synthetic this$0:Lcom/android/settings_ex/LockScreenWallpaper;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/LockScreenWallpaper;)V
    .locals 1

    .prologue
    .line 308
    iput-object p1, p0, Lcom/android/settings_ex/LockScreenWallpaper$AlphaComparator;->this$0:Lcom/android/settings_ex/LockScreenWallpaper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/LockScreenWallpaper$AlphaComparator;->sCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .locals 3
    .parameter "a"
    .parameter "b"

    .prologue
    .line 314
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/LockScreenWallpaper$AlphaComparator;->this$0:Lcom/android/settings_ex/LockScreenWallpaper;

    #getter for: Lcom/android/settings_ex/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v0}, Lcom/android/settings_ex/LockScreenWallpaper;->access$400(Lcom/android/settings_ex/LockScreenWallpaper;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    .line 317
    :goto_0
    return v0

    .line 315
    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/settings_ex/LockScreenWallpaper$AlphaComparator;->this$0:Lcom/android/settings_ex/LockScreenWallpaper;

    #getter for: Lcom/android/settings_ex/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v0}, Lcom/android/settings_ex/LockScreenWallpaper;->access$400(Lcom/android/settings_ex/LockScreenWallpaper;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 317
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/LockScreenWallpaper$AlphaComparator;->sCollator:Ljava/text/Collator;

    iget-object v1, p0, Lcom/android/settings_ex/LockScreenWallpaper$AlphaComparator;->this$0:Lcom/android/settings_ex/LockScreenWallpaper;

    #getter for: Lcom/android/settings_ex/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v1}, Lcom/android/settings_ex/LockScreenWallpaper;->access$400(Lcom/android/settings_ex/LockScreenWallpaper;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/LockScreenWallpaper$AlphaComparator;->this$0:Lcom/android/settings_ex/LockScreenWallpaper;

    #getter for: Lcom/android/settings_ex/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lcom/android/settings_ex/LockScreenWallpaper;->access$400(Lcom/android/settings_ex/LockScreenWallpaper;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 308
    check-cast p1, Landroid/content/pm/ResolveInfo;

    .end local p1
    check-cast p2, Landroid/content/pm/ResolveInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ex/LockScreenWallpaper$AlphaComparator;->compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I

    move-result v0

    return v0
.end method