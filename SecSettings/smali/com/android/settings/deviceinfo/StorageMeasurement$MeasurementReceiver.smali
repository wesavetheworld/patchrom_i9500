.class public interface abstract Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementReceiver;
.super Ljava/lang/Object;
.source "StorageMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/deviceinfo/StorageMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MeasurementReceiver"
.end annotation


# virtual methods
.method public abstract updateApproximate(Landroid/os/Bundle;)V
.end method

.method public abstract updateExact(Landroid/os/Bundle;)V
.end method