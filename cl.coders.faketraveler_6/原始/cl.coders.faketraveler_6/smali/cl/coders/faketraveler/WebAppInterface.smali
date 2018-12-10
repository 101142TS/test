.class public Lcl/coders/faketraveler/WebAppInterface;
.super Ljava/lang/Object;
.source "WebAppInterface.java"


# instance fields
.field mainActivity:Lcl/coders/faketraveler/MainActivity;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcl/coders/faketraveler/MainActivity;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p2, p0, Lcl/coders/faketraveler/WebAppInterface;->mainActivity:Lcl/coders/faketraveler/MainActivity;

    return-void
.end method


# virtual methods
.method public getLat()D
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 45
    invoke-static {}, Lcl/coders/faketraveler/MainActivity;->getLat()Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 50
    :cond_0
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getLng()D
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 62
    invoke-static {}, Lcl/coders/faketraveler/MainActivity;->getLng()Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 67
    :cond_0
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public setPosition(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 25
    iget-object v0, p0, Lcl/coders/faketraveler/WebAppInterface;->mainActivity:Lcl/coders/faketraveler/MainActivity;

    new-instance v1, Lcl/coders/faketraveler/WebAppInterface$1;

    invoke-direct {v1, p0, p1}, Lcl/coders/faketraveler/WebAppInterface$1;-><init>(Lcl/coders/faketraveler/WebAppInterface;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcl/coders/faketraveler/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
