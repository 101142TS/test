.class Lcl/coders/faketraveler/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/coders/faketraveler/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/coders/faketraveler/MainActivity;


# direct methods
.method constructor <init>(Lcl/coders/faketraveler/MainActivity;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcl/coders/faketraveler/MainActivity$4;->this$0:Lcl/coders/faketraveler/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 151
    sget-object p1, Lcl/coders/faketraveler/MainActivity;->editTextLng:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcl/coders/faketraveler/MainActivity;->editTextLng:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 152
    sget-object p1, Lcl/coders/faketraveler/MainActivity;->srcChange:Lcl/coders/faketraveler/MainActivity$SourceChange;

    sget-object v0, Lcl/coders/faketraveler/MainActivity$SourceChange;->CHANGE_FROM_MAP:Lcl/coders/faketraveler/MainActivity$SourceChange;

    if-eq p1, v0, :cond_1

    .line 153
    sget-object p1, Lcl/coders/faketraveler/MainActivity;->editTextLng:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    sput-object p1, Lcl/coders/faketraveler/MainActivity;->lng:Ljava/lang/Double;

    .line 155
    sget-object p1, Lcl/coders/faketraveler/MainActivity;->lat:Ljava/lang/Double;

    if-nez p1, :cond_0

    return-void

    .line 158
    :cond_0
    sget-object p1, Lcl/coders/faketraveler/MainActivity;->lat:Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcl/coders/faketraveler/MainActivity;->editTextLng:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcl/coders/faketraveler/MainActivity$SourceChange;->CHANGE_FROM_EDITTEXT:Lcl/coders/faketraveler/MainActivity$SourceChange;

    invoke-static {p1, v0, v1}, Lcl/coders/faketraveler/MainActivity;->setLatLng(Ljava/lang/String;Ljava/lang/String;Lcl/coders/faketraveler/MainActivity$SourceChange;)V

    :cond_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
