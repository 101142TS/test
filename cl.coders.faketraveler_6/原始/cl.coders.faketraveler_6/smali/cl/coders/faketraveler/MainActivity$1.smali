.class Lcl/coders/faketraveler/MainActivity$1;
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

    .line 78
    iput-object p1, p0, Lcl/coders/faketraveler/MainActivity$1;->this$0:Lcl/coders/faketraveler/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 81
    invoke-static {}, Lcl/coders/faketraveler/MainActivity;->applyLocation()V

    return-void
.end method
