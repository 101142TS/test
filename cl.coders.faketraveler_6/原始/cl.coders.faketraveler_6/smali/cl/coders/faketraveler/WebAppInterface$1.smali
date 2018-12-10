.class Lcl/coders/faketraveler/WebAppInterface$1;
.super Ljava/lang/Object;
.source "WebAppInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/coders/faketraveler/WebAppInterface;->setPosition(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/coders/faketraveler/WebAppInterface;

.field final synthetic val$str:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcl/coders/faketraveler/WebAppInterface;Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcl/coders/faketraveler/WebAppInterface$1;->this$0:Lcl/coders/faketraveler/WebAppInterface;

    iput-object p2, p0, Lcl/coders/faketraveler/WebAppInterface$1;->val$str:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 29
    iget-object v0, p0, Lcl/coders/faketraveler/WebAppInterface$1;->val$str:Ljava/lang/String;

    iget-object v1, p0, Lcl/coders/faketraveler/WebAppInterface$1;->val$str:Ljava/lang/String;

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcl/coders/faketraveler/WebAppInterface$1;->val$str:Ljava/lang/String;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 30
    iget-object v1, p0, Lcl/coders/faketraveler/WebAppInterface$1;->val$str:Ljava/lang/String;

    iget-object v2, p0, Lcl/coders/faketraveler/WebAppInterface$1;->val$str:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcl/coders/faketraveler/WebAppInterface$1;->val$str:Ljava/lang/String;

    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 32
    sget-object v2, Lcl/coders/faketraveler/MainActivity$SourceChange;->CHANGE_FROM_MAP:Lcl/coders/faketraveler/MainActivity$SourceChange;

    invoke-static {v0, v1, v2}, Lcl/coders/faketraveler/MainActivity;->setLatLng(Ljava/lang/String;Ljava/lang/String;Lcl/coders/faketraveler/MainActivity$SourceChange;)V

    return-void
.end method
