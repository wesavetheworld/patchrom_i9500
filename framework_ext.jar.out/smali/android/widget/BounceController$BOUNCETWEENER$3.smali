.class final Landroid/widget/BounceController$BOUNCETWEENER$3;
.super Ljava/lang/Object;
.source "BounceController.java"

# interfaces
.implements Landroid/widget/BounceController$Tweener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/BounceController$BOUNCETWEENER;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compute(ZF)F
    .locals 4
    .parameter "isStartFromDrag"
    .parameter "t"

    .prologue
    const/high16 v3, 0x3f80

    .line 323
    const/4 v0, 0x0

    .line 324
    .local v0, ret:F
    const v1, 0x400ccccd

    mul-float/2addr p2, v1

    .line 326
    const v1, 0x3f4ccccd

    cmpg-float v1, p2, v1

    if-gez v1, :cond_2

    .line 327
    if-eqz p1, :cond_1

    .line 328
    mul-float v1, p2, p2

    const v2, 0x3fc81062

    mul-float v0, v1, v2

    .line 340
    :goto_0
    cmpl-float v1, v0, v3

    if-lez v1, :cond_5

    .line 341
    const/high16 v0, 0x3f80

    .line 345
    :cond_0
    :goto_1
    sub-float v1, v3, v0

    return v1

    .line 330
    :cond_1
    const v1, 0x3ecccccd

    sub-float/2addr p2, v1

    mul-float v1, p2, p2

    const/high16 v2, 0x40c8

    mul-float v0, v1, v2

    goto :goto_0

    .line 332
    :cond_2
    const v1, 0x3fcccccd

    cmpg-float v1, p2, v1

    if-gez v1, :cond_3

    .line 333
    const v1, 0x3f99999a

    sub-float/2addr p2, v1

    mul-float v1, p2, p2

    const/high16 v2, 0x4086

    mul-float/2addr v1, v2

    const v2, 0x3ea8f5c3

    add-float v0, v1, v2

    goto :goto_0

    .line 334
    :cond_3
    const/high16 v1, 0x4000

    cmpg-float v1, p2, v1

    if-gez v1, :cond_4

    .line 335
    const v1, 0x3fe66666

    sub-float/2addr p2, v1

    mul-float v1, p2, p2

    const/high16 v2, 0x4130

    mul-float/2addr v1, v2

    const v2, 0x3f0f5c29

    add-float v0, v1, v2

    goto :goto_0

    .line 337
    :cond_4
    const v1, 0x40066666

    sub-float/2addr p2, v1

    mul-float v1, p2, p2

    const/high16 v2, 0x41e0

    mul-float/2addr v1, v2

    const v2, 0x3f3851ec

    add-float v0, v1, v2

    goto :goto_0

    .line 342
    :cond_5
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 343
    const/4 v0, 0x0

    goto :goto_1
.end method