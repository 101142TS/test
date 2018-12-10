.class public Lcl/coders/faketraveler/ApplyMockBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ApplyMockBroadcastReceiver.java"


# instance fields
.field alarmManager:Landroid/app/AlarmManager;

.field editor:Landroid/content/SharedPreferences$Editor;

.field pendingIntent:Landroid/app/PendingIntent;

.field serviceIntent:Landroid/content/Intent;

.field sharedPref:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 20
    sget-object v0, Lcl/coders/faketraveler/MainActivity;->alarmManager:Landroid/app/AlarmManager;

    iput-object v0, p0, Lcl/coders/faketraveler/ApplyMockBroadcastReceiver;->alarmManager:Landroid/app/AlarmManager;

    .line 21
    sget-object v0, Lcl/coders/faketraveler/MainActivity;->serviceIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcl/coders/faketraveler/ApplyMockBroadcastReceiver;->serviceIntent:Landroid/content/Intent;

    .line 22
    sget-object v0, Lcl/coders/faketraveler/MainActivity;->pendingIntent:Landroid/app/PendingIntent;

    iput-object v0, p0, Lcl/coders/faketraveler/ApplyMockBroadcastReceiver;->pendingIntent:Landroid/app/PendingIntent;

    .line 23
    sget-object v0, Lcl/coders/faketraveler/MainActivity;->sharedPref:Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcl/coders/faketraveler/ApplyMockBroadcastReceiver;->sharedPref:Landroid/content/SharedPreferences;

    .line 24
    sget-object v0, Lcl/coders/faketraveler/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    iput-object v0, p0, Lcl/coders/faketraveler/ApplyMockBroadcastReceiver;->editor:Landroid/content/SharedPreferences$Editor;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 30
    iget-object p1, p0, Lcl/coders/faketraveler/ApplyMockBroadcastReceiver;->sharedPref:Landroid/content/SharedPreferences;

    const-string p2, "lat"

    const-string v0, "0"

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    .line 31
    iget-object v0, p0, Lcl/coders/faketraveler/ApplyMockBroadcastReceiver;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "lng"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 33
    invoke-static {p1, p2, v0, v1}, Lcl/coders/faketraveler/MainActivity;->exec(DD)V

    .line 35
    invoke-static {}, Lcl/coders/faketraveler/MainActivity;->hasEnded()Z

    move-result p1

    if-nez p1, :cond_0

    .line 36
    sget p1, Lcl/coders/faketraveler/MainActivity;->timeInterval:I

    invoke-static {p1}, Lcl/coders/faketraveler/MainActivity;->setAlarm(I)V

    goto :goto_0

    .line 38
    :cond_0
    invoke-static {}, Lcl/coders/faketraveler/MainActivity;->stopMockingLocation()V

    :goto_0
    return-void
.end method
