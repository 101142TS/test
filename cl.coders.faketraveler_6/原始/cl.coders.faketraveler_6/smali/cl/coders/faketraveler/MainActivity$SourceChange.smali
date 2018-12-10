.class public final enum Lcl/coders/faketraveler/MainActivity$SourceChange;
.super Ljava/lang/Enum;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/coders/faketraveler/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SourceChange"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcl/coders/faketraveler/MainActivity$SourceChange;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcl/coders/faketraveler/MainActivity$SourceChange;

.field public static final enum CHANGE_FROM_EDITTEXT:Lcl/coders/faketraveler/MainActivity$SourceChange;

.field public static final enum CHANGE_FROM_MAP:Lcl/coders/faketraveler/MainActivity$SourceChange;

.field public static final enum NONE:Lcl/coders/faketraveler/MainActivity$SourceChange;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 56
    new-instance v0, Lcl/coders/faketraveler/MainActivity$SourceChange;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcl/coders/faketraveler/MainActivity$SourceChange;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/coders/faketraveler/MainActivity$SourceChange;->NONE:Lcl/coders/faketraveler/MainActivity$SourceChange;

    new-instance v0, Lcl/coders/faketraveler/MainActivity$SourceChange;

    const-string v1, "CHANGE_FROM_EDITTEXT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcl/coders/faketraveler/MainActivity$SourceChange;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/coders/faketraveler/MainActivity$SourceChange;->CHANGE_FROM_EDITTEXT:Lcl/coders/faketraveler/MainActivity$SourceChange;

    new-instance v0, Lcl/coders/faketraveler/MainActivity$SourceChange;

    const-string v1, "CHANGE_FROM_MAP"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcl/coders/faketraveler/MainActivity$SourceChange;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/coders/faketraveler/MainActivity$SourceChange;->CHANGE_FROM_MAP:Lcl/coders/faketraveler/MainActivity$SourceChange;

    const/4 v0, 0x3

    .line 55
    new-array v0, v0, [Lcl/coders/faketraveler/MainActivity$SourceChange;

    sget-object v1, Lcl/coders/faketraveler/MainActivity$SourceChange;->NONE:Lcl/coders/faketraveler/MainActivity$SourceChange;

    aput-object v1, v0, v2

    sget-object v1, Lcl/coders/faketraveler/MainActivity$SourceChange;->CHANGE_FROM_EDITTEXT:Lcl/coders/faketraveler/MainActivity$SourceChange;

    aput-object v1, v0, v3

    sget-object v1, Lcl/coders/faketraveler/MainActivity$SourceChange;->CHANGE_FROM_MAP:Lcl/coders/faketraveler/MainActivity$SourceChange;

    aput-object v1, v0, v4

    sput-object v0, Lcl/coders/faketraveler/MainActivity$SourceChange;->$VALUES:[Lcl/coders/faketraveler/MainActivity$SourceChange;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcl/coders/faketraveler/MainActivity$SourceChange;
    .locals 1

    .line 55
    const-class v0, Lcl/coders/faketraveler/MainActivity$SourceChange;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcl/coders/faketraveler/MainActivity$SourceChange;

    return-object p0
.end method

.method public static values()[Lcl/coders/faketraveler/MainActivity$SourceChange;
    .locals 1

    .line 55
    sget-object v0, Lcl/coders/faketraveler/MainActivity$SourceChange;->$VALUES:[Lcl/coders/faketraveler/MainActivity$SourceChange;

    invoke-virtual {v0}, [Lcl/coders/faketraveler/MainActivity$SourceChange;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcl/coders/faketraveler/MainActivity$SourceChange;

    return-object v0
.end method
