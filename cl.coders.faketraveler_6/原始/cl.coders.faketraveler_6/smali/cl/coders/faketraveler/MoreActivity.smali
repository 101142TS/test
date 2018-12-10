.class public Lcl/coders/faketraveler/MoreActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MoreActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 19
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f09001c

    .line 20
    invoke-virtual {p0, p1}, Lcl/coders/faketraveler/MoreActivity;->setContentView(I)V

    .line 27
    invoke-virtual {p0}, Lcl/coders/faketraveler/MoreActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "cl.coders.mockposition.sharedpreferences"

    const/4 v1, 0x0

    .line 28
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const v0, 0x7f07008d

    .line 30
    invoke-virtual {p0, v0}, Lcl/coders/faketraveler/MoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 31
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const v0, 0x7f070039

    .line 33
    invoke-virtual {p0, v0}, Lcl/coders/faketraveler/MoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const v1, 0x7f07003a

    .line 34
    invoke-virtual {p0, v1}, Lcl/coders/faketraveler/MoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const-string v2, "howManyTimes"

    const-string v3, "1"

    .line 35
    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const-string v2, "timeInterval"

    const-string v3, "10"

    .line 36
    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 38
    new-instance p1, Lcl/coders/faketraveler/MoreActivity$1;

    invoke-direct {p1, p0}, Lcl/coders/faketraveler/MoreActivity$1;-><init>(Lcl/coders/faketraveler/MoreActivity;)V

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 69
    new-instance p1, Lcl/coders/faketraveler/MoreActivity$2;

    invoke-direct {p1, p0}, Lcl/coders/faketraveler/MoreActivity$2;-><init>(Lcl/coders/faketraveler/MoreActivity;)V

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method
