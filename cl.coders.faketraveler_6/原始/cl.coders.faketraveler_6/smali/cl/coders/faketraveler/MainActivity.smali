.class public Lcl/coders/faketraveler/MainActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcl/coders/faketraveler/MainActivity$SourceChange;
    }
.end annotation


# static fields
.field static final KEEP_GOING:I = 0x0

.field private static SCHEDULE_REQUEST_CODE:I = 0x1

.field public static alarmManager:Landroid/app/AlarmManager; = null

.field static button0:Landroid/widget/Button; = null

.field static button1:Landroid/widget/Button; = null

.field static context:Landroid/content/Context; = null

.field static currentVersion:I = 0x0

.field static editTextLat:Landroid/widget/EditText; = null

.field static editTextLng:Landroid/widget/EditText; = null

.field static editor:Landroid/content/SharedPreferences$Editor; = null

.field static endTime:J = 0x0L

.field static howManyTimes:I = 0x0

.field static lat:Ljava/lang/Double; = null

.field static lng:Ljava/lang/Double; = null

.field private static mockGps:Lcl/coders/faketraveler/MockLocationProvider; = null

.field private static mockNetwork:Lcl/coders/faketraveler/MockLocationProvider; = null

.field public static pendingIntent:Landroid/app/PendingIntent; = null

.field public static serviceIntent:Landroid/content/Intent; = null

.field static sharedPref:Landroid/content/SharedPreferences; = null

.field static final sharedPrefKey:Ljava/lang/String; = "cl.coders.mockposition.sharedpreferences"

.field static srcChange:Lcl/coders/faketraveler/MainActivity$SourceChange;

.field static timeInterval:I

.field static webView:Landroid/webkit/WebView;


# instance fields
.field webAppInterface:Lcl/coders/faketraveler/WebAppInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    sget-object v0, Lcl/coders/faketraveler/MainActivity$SourceChange;->NONE:Lcl/coders/faketraveler/MainActivity$SourceChange;

    sput-object v0, Lcl/coders/faketraveler/MainActivity;->srcChange:Lcl/coders/faketraveler/MainActivity$SourceChange;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method protected static applyLocation()V
    .locals 6

    .line 226
    invoke-static {}, Lcl/coders/faketraveler/MainActivity;->latIsEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcl/coders/faketraveler/MainActivity;->lngIsEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 231
    :cond_0
    sget-object v0, Lcl/coders/faketraveler/MainActivity;->editTextLat:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcl/coders/faketraveler/MainActivity;->lat:Ljava/lang/Double;

    .line 232
    sget-object v0, Lcl/coders/faketraveler/MainActivity;->editTextLng:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcl/coders/faketraveler/MainActivity;->lng:Ljava/lang/Double;

    .line 234
    sget-object v0, Lcl/coders/faketraveler/MainActivity;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcl/coders/faketraveler/MainActivity;->toast(Ljava/lang/String;)V

    .line 236
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget v2, Lcl/coders/faketraveler/MainActivity;->howManyTimes:I

    add-int/lit8 v2, v2, -0x1

    sget v3, Lcl/coders/faketraveler/MainActivity;->timeInterval:I

    mul-int v2, v2, v3

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long v4, v0, v2

    sput-wide v4, Lcl/coders/faketraveler/MainActivity;->endTime:J

    .line 237
    sget-object v0, Lcl/coders/faketraveler/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "endTime"

    sget-wide v2, Lcl/coders/faketraveler/MainActivity;->endTime:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 238
    sget-object v0, Lcl/coders/faketraveler/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 240
    invoke-static {}, Lcl/coders/faketraveler/MainActivity;->changeButtonToStop()V

    .line 243
    :try_start_0
    new-instance v0, Lcl/coders/faketraveler/MockLocationProvider;

    const-string v1, "network"

    sget-object v2, Lcl/coders/faketraveler/MainActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcl/coders/faketraveler/MockLocationProvider;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    sput-object v0, Lcl/coders/faketraveler/MainActivity;->mockNetwork:Lcl/coders/faketraveler/MockLocationProvider;

    .line 244
    new-instance v0, Lcl/coders/faketraveler/MockLocationProvider;

    const-string v1, "gps"

    sget-object v2, Lcl/coders/faketraveler/MainActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcl/coders/faketraveler/MockLocationProvider;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    sput-object v0, Lcl/coders/faketraveler/MainActivity;->mockGps:Lcl/coders/faketraveler/MockLocationProvider;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    sget-object v0, Lcl/coders/faketraveler/MainActivity;->lat:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    sget-object v2, Lcl/coders/faketraveler/MainActivity;->lng:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcl/coders/faketraveler/MainActivity;->exec(DD)V

    .line 254
    invoke-static {}, Lcl/coders/faketraveler/MainActivity;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 255
    sget-object v0, Lcl/coders/faketraveler/MainActivity;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcl/coders/faketraveler/MainActivity;->toast(Ljava/lang/String;)V

    .line 256
    sget v0, Lcl/coders/faketraveler/MainActivity;->timeInterval:I

    invoke-static {v0}, Lcl/coders/faketraveler/MainActivity;->setAlarm(I)V

    goto :goto_0

    .line 258
    :cond_1
    invoke-static {}, Lcl/coders/faketraveler/MainActivity;->stopMockingLocation()V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 246
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 247
    sget-object v0, Lcl/coders/faketraveler/MainActivity;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcl/coders/faketraveler/MainActivity;->toast(Ljava/lang/String;)V

    .line 248
    invoke-static {}, Lcl/coders/faketraveler/MainActivity;->stopMockingLocation()V

    return-void

    .line 227
    :cond_2
    :goto_1
    sget-object v0, Lcl/coders/faketraveler/MainActivity;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcl/coders/faketraveler/MainActivity;->toast(Ljava/lang/String;)V

    return-void
.end method

.method static changeButtonToApply()V
    .locals 3

    .line 366
    sget-object v0, Lcl/coders/faketraveler/MainActivity;->button0:Landroid/widget/Button;

    sget-object v1, Lcl/coders/faketraveler/MainActivity;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 367
    sget-object v0, Lcl/coders/faketraveler/MainActivity;->button0:Landroid/widget/Button;

    new-instance v1, Lcl/coders/faketraveler/MainActivity$5;

    invoke-direct {v1}, Lcl/coders/faketraveler/MainActivity$5;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static changeButtonToStop()V
    .locals 3

    .line 381
    sget-object v0, Lcl/coders/faketraveler/MainActivity;->button0:Landroid/widget/Button;

    sget-object v1, Lcl/coders/faketraveler/MainActivity;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 382
    sget-object v0, Lcl/coders/faketraveler/MainActivity;->button0:Landroid/widget/Button;

    new-instance v1, Lcl/coders/faketraveler/MainActivity$6;

    invoke-direct {v1}, Lcl/coders/faketraveler/MainActivity$6;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static checkSharedPrefs()V
    .locals 9

    .line 190
    sget-object v0, Lcl/coders/faketraveler/MainActivity;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "version"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 191
    sget-object v1, Lcl/coders/faketraveler/MainActivity;->sharedPref:Landroid/content/SharedPreferences;

    const-string v2, "lat"

    const-string v3, "N/A"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 192
    sget-object v2, Lcl/coders/faketraveler/MainActivity;->sharedPref:Landroid/content/SharedPreferences;

    const-string v3, "lng"

    const-string v4, "N/A"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 193
    sget-object v3, Lcl/coders/faketraveler/MainActivity;->sharedPref:Landroid/content/SharedPreferences;

    const-string v4, "howManyTimes"

    const-string v5, "N/A"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 194
    sget-object v4, Lcl/coders/faketraveler/MainActivity;->sharedPref:Landroid/content/SharedPreferences;

    const-string v5, "timeInterval"

    const-string v6, "N/A"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 195
    sget-object v5, Lcl/coders/faketraveler/MainActivity;->sharedPref:Landroid/content/SharedPreferences;

    const-string v6, "endTime"

    const-wide/16 v7, 0x0

    invoke-interface {v5, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 197
    sget v5, Lcl/coders/faketraveler/MainActivity;->currentVersion:I

    if-eq v0, v5, :cond_0

    .line 198
    sget-object v0, Lcl/coders/faketraveler/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v5, "version"

    sget v6, Lcl/coders/faketraveler/MainActivity;->currentVersion:I

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 199
    sget-object v0, Lcl/coders/faketraveler/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 203
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 204
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 205
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 206
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 208
    sget-object v3, Lcl/coders/faketraveler/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 209
    sget-object v3, Lcl/coders/faketraveler/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v4, "lat"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 210
    sget-object v1, Lcl/coders/faketraveler/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "lng"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 211
    sget-object v1, Lcl/coders/faketraveler/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "version"

    sget v3, Lcl/coders/faketraveler/MainActivity;->currentVersion:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 212
    sget-object v1, Lcl/coders/faketraveler/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "howManyTimes"

    const-string v3, "1"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 213
    sget-object v1, Lcl/coders/faketraveler/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "timeInterval"

    const-string v3, "10"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 214
    sget-object v1, Lcl/coders/faketraveler/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "endTime"

    invoke-interface {v1, v2, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 215
    sget-object v1, Lcl/coders/faketraveler/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 216
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static exec(DD)V
    .locals 1

    .line 271
    :try_start_0
    sget-object v0, Lcl/coders/faketraveler/MainActivity;->mockNetwork:Lcl/coders/faketraveler/MockLocationProvider;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcl/coders/faketraveler/MockLocationProvider;->pushLocation(DD)V

    .line 273
    sget-object v0, Lcl/coders/faketraveler/MainActivity;->mockGps:Lcl/coders/faketraveler/MockLocationProvider;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcl/coders/faketraveler/MockLocationProvider;->pushLocation(DD)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 275
    sget-object p1, Lcl/coders/faketraveler/MainActivity;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b0011

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcl/coders/faketraveler/MainActivity;->toast(Ljava/lang/String;)V

    .line 276
    invoke-static {}, Lcl/coders/faketraveler/MainActivity;->changeButtonToApply()V

    .line 277
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method static getLat()Ljava/lang/String;
    .locals 1

    .line 423
    sget-object v0, Lcl/coders/faketraveler/MainActivity;->editTextLat:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getLng()Ljava/lang/String;
    .locals 1

    .line 432
    sget-object v0, Lcl/coders/faketraveler/MainActivity;->editTextLng:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static hasEnded()Z
    .locals 6

    .line 288
    sget v0, Lcl/coders/faketraveler/MainActivity;->howManyTimes:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 290
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcl/coders/faketraveler/MainActivity;->endTime:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method static latIsEmpty()Z
    .locals 1

    .line 333
    sget-object v0, Lcl/coders/faketraveler/MainActivity;->editTextLat:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    return v0
.end method

.method static lngIsEmpty()Z
    .locals 1

    .line 340
    sget-object v0, Lcl/coders/faketraveler/MainActivity;->editTextLng:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    return v0
.end method

.method static setAlarm(I)V
    .locals 9

    .line 303
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcl/coders/faketraveler/MainActivity;->context:Landroid/content/Context;

    const-class v2, Lcl/coders/faketraveler/ApplyMockBroadcastReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sput-object v0, Lcl/coders/faketraveler/MainActivity;->serviceIntent:Landroid/content/Intent;

    .line 304
    sget-object v0, Lcl/coders/faketraveler/MainActivity;->context:Landroid/content/Context;

    sget v1, Lcl/coders/faketraveler/MainActivity;->SCHEDULE_REQUEST_CODE:I

    sget-object v2, Lcl/coders/faketraveler/MainActivity;->serviceIntent:Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    sput-object v0, Lcl/coders/faketraveler/MainActivity;->pendingIntent:Landroid/app/PendingIntent;

    .line 307
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    const/4 v2, 0x1

    if-lt v0, v1, :cond_1

    .line 308
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 309
    sget-object v0, Lcl/coders/faketraveler/MainActivity;->alarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    mul-int/lit16 p0, p0, 0x3e8

    int-to-long v5, p0

    add-long v7, v3, v5

    sget-object p0, Lcl/coders/faketraveler/MainActivity;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2, v7, v8, p0}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 311
    :cond_0
    sget-object p0, Lcl/coders/faketraveler/MainActivity;->alarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget v3, Lcl/coders/faketraveler/MainActivity;->timeInterval:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    add-long v5, v0, v3

    sget-object v0, Lcl/coders/faketraveler/MainActivity;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0, v2, v5, v6, v0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 314
    :cond_1
    sget-object p0, Lcl/coders/faketraveler/MainActivity;->alarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget v3, Lcl/coders/faketraveler/MainActivity;->timeInterval:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    add-long v5, v0, v3

    sget-object v0, Lcl/coders/faketraveler/MainActivity;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0, v2, v5, v6, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 318
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static setLatLng(Ljava/lang/String;Ljava/lang/String;Lcl/coders/faketraveler/MainActivity$SourceChange;)V
    .locals 2

    .line 400
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcl/coders/faketraveler/MainActivity;->lat:Ljava/lang/Double;

    .line 401
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcl/coders/faketraveler/MainActivity;->lng:Ljava/lang/Double;

    .line 403
    sget-object v0, Lcl/coders/faketraveler/MainActivity$SourceChange;->CHANGE_FROM_EDITTEXT:Lcl/coders/faketraveler/MainActivity$SourceChange;

    if-ne p2, v0, :cond_0

    .line 404
    sget-object p2, Lcl/coders/faketraveler/MainActivity;->webView:Landroid/webkit/WebView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:setOnMap("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcl/coders/faketraveler/MainActivity;->lat:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcl/coders/faketraveler/MainActivity;->lng:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 405
    :cond_0
    sget-object v0, Lcl/coders/faketraveler/MainActivity$SourceChange;->CHANGE_FROM_MAP:Lcl/coders/faketraveler/MainActivity$SourceChange;

    if-ne p2, v0, :cond_1

    .line 406
    sget-object p2, Lcl/coders/faketraveler/MainActivity$SourceChange;->CHANGE_FROM_MAP:Lcl/coders/faketraveler/MainActivity$SourceChange;

    sput-object p2, Lcl/coders/faketraveler/MainActivity;->srcChange:Lcl/coders/faketraveler/MainActivity$SourceChange;

    .line 407
    sget-object p2, Lcl/coders/faketraveler/MainActivity;->editTextLat:Landroid/widget/EditText;

    invoke-virtual {p2, p0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 408
    sget-object p2, Lcl/coders/faketraveler/MainActivity;->editTextLng:Landroid/widget/EditText;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 409
    sget-object p2, Lcl/coders/faketraveler/MainActivity$SourceChange;->NONE:Lcl/coders/faketraveler/MainActivity$SourceChange;

    sput-object p2, Lcl/coders/faketraveler/MainActivity;->srcChange:Lcl/coders/faketraveler/MainActivity$SourceChange;

    .line 412
    :cond_1
    :goto_0
    sget-object p2, Lcl/coders/faketraveler/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v0, "lat"

    invoke-interface {p2, v0, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 413
    sget-object p0, Lcl/coders/faketraveler/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string p2, "lng"

    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 414
    sget-object p0, Lcl/coders/faketraveler/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method protected static stopMockingLocation()V
    .locals 8

    .line 347
    invoke-static {}, Lcl/coders/faketraveler/MainActivity;->changeButtonToApply()V

    .line 348
    sget-object v0, Lcl/coders/faketraveler/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "endTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    sub-long v6, v2, v4

    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 349
    sget-object v0, Lcl/coders/faketraveler/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 351
    sget-object v0, Lcl/coders/faketraveler/MainActivity;->pendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 352
    sget-object v0, Lcl/coders/faketraveler/MainActivity;->alarmManager:Landroid/app/AlarmManager;

    sget-object v1, Lcl/coders/faketraveler/MainActivity;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 353
    sget-object v0, Lcl/coders/faketraveler/MainActivity;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcl/coders/faketraveler/MainActivity;->toast(Ljava/lang/String;)V

    .line 356
    :cond_0
    sget-object v0, Lcl/coders/faketraveler/MainActivity;->mockNetwork:Lcl/coders/faketraveler/MockLocationProvider;

    if-eqz v0, :cond_1

    .line 357
    sget-object v0, Lcl/coders/faketraveler/MainActivity;->mockNetwork:Lcl/coders/faketraveler/MockLocationProvider;

    invoke-virtual {v0}, Lcl/coders/faketraveler/MockLocationProvider;->shutdown()V

    .line 358
    :cond_1
    sget-object v0, Lcl/coders/faketraveler/MainActivity;->mockGps:Lcl/coders/faketraveler/MockLocationProvider;

    if-eqz v0, :cond_2

    .line 359
    sget-object v0, Lcl/coders/faketraveler/MainActivity;->mockGps:Lcl/coders/faketraveler/MockLocationProvider;

    invoke-virtual {v0}, Lcl/coders/faketraveler/MockLocationProvider;->shutdown()V

    :cond_2
    return-void
.end method

.method static toast(Ljava/lang/String;)V
    .locals 2

    .line 326
    sget-object v0, Lcl/coders/faketraveler/MainActivity;->context:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 63
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f09001b

    .line 64
    invoke-virtual {p0, p1}, Lcl/coders/faketraveler/MainActivity;->setContentView(I)V

    .line 66
    invoke-virtual {p0}, Lcl/coders/faketraveler/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcl/coders/faketraveler/MainActivity;->context:Landroid/content/Context;

    const p1, 0x7f07009c

    .line 67
    invoke-virtual {p0, p1}, Lcl/coders/faketraveler/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    sput-object p1, Lcl/coders/faketraveler/MainActivity;->webView:Landroid/webkit/WebView;

    .line 68
    new-instance p1, Lcl/coders/faketraveler/WebAppInterface;

    invoke-direct {p1, p0, p0}, Lcl/coders/faketraveler/WebAppInterface;-><init>(Landroid/content/Context;Lcl/coders/faketraveler/MainActivity;)V

    iput-object p1, p0, Lcl/coders/faketraveler/MainActivity;->webAppInterface:Lcl/coders/faketraveler/WebAppInterface;

    const-string p1, "alarm"

    .line 69
    invoke-virtual {p0, p1}, Lcl/coders/faketraveler/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    sput-object p1, Lcl/coders/faketraveler/MainActivity;->alarmManager:Landroid/app/AlarmManager;

    .line 70
    sget-object p1, Lcl/coders/faketraveler/MainActivity;->context:Landroid/content/Context;

    const-string v0, "cl.coders.mockposition.sharedpreferences"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    sput-object p1, Lcl/coders/faketraveler/MainActivity;->sharedPref:Landroid/content/SharedPreferences;

    .line 71
    sget-object p1, Lcl/coders/faketraveler/MainActivity;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    sput-object p1, Lcl/coders/faketraveler/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const p1, 0x7f070022

    .line 73
    invoke-virtual {p0, p1}, Lcl/coders/faketraveler/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    sput-object p1, Lcl/coders/faketraveler/MainActivity;->button0:Landroid/widget/Button;

    const p1, 0x7f070023

    .line 74
    invoke-virtual {p0, p1}, Lcl/coders/faketraveler/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    sput-object p1, Lcl/coders/faketraveler/MainActivity;->button1:Landroid/widget/Button;

    const p1, 0x7f070037

    .line 75
    invoke-virtual {p0, p1}, Lcl/coders/faketraveler/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    sput-object p1, Lcl/coders/faketraveler/MainActivity;->editTextLat:Landroid/widget/EditText;

    const p1, 0x7f070038

    .line 76
    invoke-virtual {p0, p1}, Lcl/coders/faketraveler/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    sput-object p1, Lcl/coders/faketraveler/MainActivity;->editTextLng:Landroid/widget/EditText;

    .line 78
    sget-object p1, Lcl/coders/faketraveler/MainActivity;->button0:Landroid/widget/Button;

    new-instance v0, Lcl/coders/faketraveler/MainActivity$1;

    invoke-direct {v0, p0}, Lcl/coders/faketraveler/MainActivity$1;-><init>(Lcl/coders/faketraveler/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    sget-object p1, Lcl/coders/faketraveler/MainActivity;->button1:Landroid/widget/Button;

    new-instance v0, Lcl/coders/faketraveler/MainActivity$2;

    invoke-direct {v0, p0}, Lcl/coders/faketraveler/MainActivity$2;-><init>(Lcl/coders/faketraveler/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    sget-object p1, Lcl/coders/faketraveler/MainActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 94
    sget-object p1, Lcl/coders/faketraveler/MainActivity;->webView:Landroid/webkit/WebView;

    new-instance v2, Landroid/webkit/WebChromeClient;

    invoke-direct {v2}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 95
    sget-object p1, Lcl/coders/faketraveler/MainActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 96
    sget-object p1, Lcl/coders/faketraveler/MainActivity;->webView:Landroid/webkit/WebView;

    iget-object v0, p0, Lcl/coders/faketraveler/MainActivity;->webAppInterface:Lcl/coders/faketraveler/WebAppInterface;

    const-string v2, "Android"

    invoke-virtual {p1, v0, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    sget-object p1, Lcl/coders/faketraveler/MainActivity;->webView:Landroid/webkit/WebView;

    const-string v0, "file:///android_asset/map.html"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 100
    :try_start_0
    invoke-virtual {p0}, Lcl/coders/faketraveler/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p0}, Lcl/coders/faketraveler/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 101
    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    sput p1, Lcl/coders/faketraveler/MainActivity;->currentVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 103
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 106
    :goto_0
    invoke-static {}, Lcl/coders/faketraveler/MainActivity;->checkSharedPrefs()V

    .line 108
    sget-object p1, Lcl/coders/faketraveler/MainActivity;->sharedPref:Landroid/content/SharedPreferences;

    const-string v0, "howManyTimes"

    const-string v1, "1"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    sput p1, Lcl/coders/faketraveler/MainActivity;->howManyTimes:I

    .line 109
    sget-object p1, Lcl/coders/faketraveler/MainActivity;->sharedPref:Landroid/content/SharedPreferences;

    const-string v0, "timeInterval"

    const-string v1, "10"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    sput p1, Lcl/coders/faketraveler/MainActivity;->timeInterval:I

    .line 112
    :try_start_1
    sget-object p1, Lcl/coders/faketraveler/MainActivity;->sharedPref:Landroid/content/SharedPreferences;

    const-string v0, "lat"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    sput-object p1, Lcl/coders/faketraveler/MainActivity;->lat:Ljava/lang/Double;

    .line 113
    sget-object p1, Lcl/coders/faketraveler/MainActivity;->sharedPref:Landroid/content/SharedPreferences;

    const-string v0, "lng"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    sput-object p1, Lcl/coders/faketraveler/MainActivity;->lng:Ljava/lang/Double;

    .line 114
    sget-object p1, Lcl/coders/faketraveler/MainActivity;->editTextLat:Landroid/widget/EditText;

    sget-object v0, Lcl/coders/faketraveler/MainActivity;->lat:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 115
    sget-object p1, Lcl/coders/faketraveler/MainActivity;->editTextLng:Landroid/widget/EditText;

    sget-object v0, Lcl/coders/faketraveler/MainActivity;->lng:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 117
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 120
    :goto_1
    sget-object p1, Lcl/coders/faketraveler/MainActivity;->editTextLat:Landroid/widget/EditText;

    new-instance v0, Lcl/coders/faketraveler/MainActivity$3;

    invoke-direct {v0, p0}, Lcl/coders/faketraveler/MainActivity$3;-><init>(Lcl/coders/faketraveler/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 147
    sget-object p1, Lcl/coders/faketraveler/MainActivity;->editTextLng:Landroid/widget/EditText;

    new-instance v0, Lcl/coders/faketraveler/MainActivity$4;

    invoke-direct {v0, p0}, Lcl/coders/faketraveler/MainActivity$4;-><init>(Lcl/coders/faketraveler/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 174
    sget-object p1, Lcl/coders/faketraveler/MainActivity;->sharedPref:Landroid/content/SharedPreferences;

    const-string v0, "endTime"

    const-wide/16 v1, 0x0

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    sput-wide v3, Lcl/coders/faketraveler/MainActivity;->endTime:J

    .line 176
    sget-object p1, Lcl/coders/faketraveler/MainActivity;->pendingIntent:Landroid/app/PendingIntent;

    if-eqz p1, :cond_0

    sget-wide v3, Lcl/coders/faketraveler/MainActivity;->endTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-lez p1, :cond_0

    .line 177
    invoke-static {}, Lcl/coders/faketraveler/MainActivity;->changeButtonToStop()V

    goto :goto_2

    .line 179
    :cond_0
    sput-wide v1, Lcl/coders/faketraveler/MainActivity;->endTime:J

    .line 180
    sget-object p1, Lcl/coders/faketraveler/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v0, "endTime"

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 181
    sget-object p1, Lcl/coders/faketraveler/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_2
    return-void
.end method
