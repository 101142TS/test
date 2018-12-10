.class public Lcl/coders/faketraveler/MockLocationProvider;
.super Ljava/lang/Object;
.source "MockLocationProvider.java"


# instance fields
.field ctx:Landroid/content/Context;

.field providerName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 11

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcl/coders/faketraveler/MockLocationProvider;->providerName:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcl/coders/faketraveler/MockLocationProvider;->ctx:Landroid/content/Context;

    const-string p1, "location"

    .line 24
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    .line 28
    :try_start_0
    iget-object v1, p0, Lcl/coders/faketraveler/MockLocationProvider;->providerName:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x5

    move-object v0, p1

    invoke-virtual/range {v0 .. v10}, Landroid/location/LocationManager;->addTestProvider(Ljava/lang/String;ZZZZZZZII)V

    .line 30
    iget-object p2, p0, Lcl/coders/faketraveler/MockLocationProvider;->providerName:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/location/LocationManager;->setTestProviderEnabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 32
    :catch_0
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Not allowed to perform MOCK_LOCATION"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public pushLocation(DD)V
    .locals 3

    .line 44
    iget-object v0, p0, Lcl/coders/faketraveler/MockLocationProvider;->ctx:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 47
    new-instance v1, Landroid/location/Location;

    iget-object v2, p0, Lcl/coders/faketraveler/MockLocationProvider;->providerName:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v1, p1, p2}, Landroid/location/Location;->setLatitude(D)V

    .line 49
    invoke-virtual {v1, p3, p4}, Landroid/location/Location;->setLongitude(D)V

    const-wide/high16 p1, 0x4008000000000000L    # 3.0

    .line 50
    invoke-virtual {v1, p1, p2}, Landroid/location/Location;->setAltitude(D)V

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {v1, p1, p2}, Landroid/location/Location;->setTime(J)V

    const p1, 0x3c23d70a    # 0.01f

    .line 53
    invoke-virtual {v1, p1}, Landroid/location/Location;->setSpeed(F)V

    const/high16 p2, 0x3f800000    # 1.0f

    .line 54
    invoke-virtual {v1, p2}, Landroid/location/Location;->setBearing(F)V

    const/high16 p2, 0x40400000    # 3.0f

    .line 55
    invoke-virtual {v1, p2}, Landroid/location/Location;->setAccuracy(F)V

    .line 56
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const p3, 0x3dcccccd    # 0.1f

    const/16 p4, 0x1a

    if-lt p2, p4, :cond_0

    .line 57
    invoke-virtual {v1, p3}, Landroid/location/Location;->setBearingAccuracyDegrees(F)V

    .line 59
    :cond_0
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, p4, :cond_1

    .line 60
    invoke-virtual {v1, p3}, Landroid/location/Location;->setVerticalAccuracyMeters(F)V

    .line 62
    :cond_1
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, p4, :cond_2

    .line 63
    invoke-virtual {v1, p1}, Landroid/location/Location;->setSpeedAccuracyMetersPerSecond(F)V

    .line 65
    :cond_2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x11

    if-lt p1, p2, :cond_3

    .line 66
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide p1

    invoke-virtual {v1, p1, p2}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    .line 68
    :cond_3
    iget-object p1, p0, Lcl/coders/faketraveler/MockLocationProvider;->providerName:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/location/LocationManager;->setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;)V

    return-void
.end method

.method public shutdown()V
    .locals 2

    .line 77
    iget-object v0, p0, Lcl/coders/faketraveler/MockLocationProvider;->ctx:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 79
    iget-object v1, p0, Lcl/coders/faketraveler/MockLocationProvider;->providerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeTestProvider(Ljava/lang/String;)V

    return-void
.end method
