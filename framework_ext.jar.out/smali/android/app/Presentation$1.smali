.class final Landroid/app/Presentation$1;
.super Landroid/view/ContextThemeWrapper;
.source "Presentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/Presentation;->createPresentationContext(Landroid/content/Context;Landroid/view/Display;I)Landroid/content/Context;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$displayWindowManager:Landroid/view/WindowManagerImpl;


# direct methods
.method constructor <init>(Landroid/content/Context;ILandroid/view/WindowManagerImpl;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 322
    iput-object p3, p0, Landroid/app/Presentation$1;->val$displayWindowManager:Landroid/view/WindowManagerImpl;

    invoke-direct {p0, p1, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "name"

    .prologue
    .line 325
    const-string v0, "window"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Landroid/app/Presentation$1;->val$displayWindowManager:Landroid/view/WindowManagerImpl;

    .line 328
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
