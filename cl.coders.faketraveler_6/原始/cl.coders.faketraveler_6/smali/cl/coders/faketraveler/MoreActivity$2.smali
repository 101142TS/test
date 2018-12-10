.class Lcl/coders/faketraveler/MoreActivity$2;
.super Ljava/lang/Object;
.source "MoreActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/coders/faketraveler/MoreActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/coders/faketraveler/MoreActivity;


# direct methods
.method constructor <init>(Lcl/coders/faketraveler/MoreActivity;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcl/coders/faketraveler/MoreActivity$2;->this$0:Lcl/coders/faketraveler/MoreActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 74
    iget-object p1, p0, Lcl/coders/faketraveler/MoreActivity$2;->this$0:Lcl/coders/faketraveler/MoreActivity;

    const v0, 0x7f07003a

    invoke-virtual {p1, v0}, Lcl/coders/faketraveler/MoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    .line 75
    iget-object v0, p0, Lcl/coders/faketraveler/MoreActivity$2;->this$0:Lcl/coders/faketraveler/MoreActivity;

    invoke-virtual {v0}, Lcl/coders/faketraveler/MoreActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "cl.coders.mockposition.sharedpreferences"

    const/4 v2, 0x0

    .line 76
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 77
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 79
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "timeInterval"

    const-string v1, "10"

    .line 80
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/16 p1, 0xa

    .line 81
    sput p1, Lcl/coders/faketraveler/MainActivity;->timeInterval:I

    goto :goto_0

    :cond_0
    const-string v1, "timeInterval"

    .line 83
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 84
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    sput p1, Lcl/coders/faketraveler/MainActivity;->timeInterval:I

    .line 87
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

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
