.class Lcl/coders/faketraveler/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 85
    iput-object p1, p0, Lcl/coders/faketraveler/MainActivity$2;->this$0:Lcl/coders/faketraveler/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 88
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcl/coders/faketraveler/MainActivity$2;->this$0:Lcl/coders/faketraveler/MainActivity;

    invoke-virtual {v0}, Lcl/coders/faketraveler/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcl/coders/faketraveler/MoreActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    iget-object v0, p0, Lcl/coders/faketraveler/MainActivity$2;->this$0:Lcl/coders/faketraveler/MainActivity;

    invoke-virtual {v0, p1}, Lcl/coders/faketraveler/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
