.class public Lcom/SecShell/SecShell/Helper;
.super Ljava/lang/Object;
.source "Helper.java"


# static fields
.field public static APPNAME:Ljava/lang/String;

.field public static JNIPPATH:Ljava/lang/String;

.field public static PKGNAME:Ljava/lang/String;

.field public static PPATH:Ljava/lang/String;

.field public static cl:Ljava/lang/ClassLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    sput-object v0, Lcom/SecShell/SecShell/Helper;->PPATH:Ljava/lang/String;

    .line 20
    sput-object v0, Lcom/SecShell/SecShell/Helper;->JNIPPATH:Ljava/lang/String;

    .line 21
    const-string v0, "cl.coders.faketraveler"

    sput-object v0, Lcom/SecShell/SecShell/Helper;->PKGNAME:Ljava/lang/String;

    .line 22
    const-string v0, ""

    sput-object v0, Lcom/SecShell/SecShell/Helper;->APPNAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs InvokeObject([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p0, "objArr"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 29
    const/4 v4, 0x0

    aget-object v2, p0, v4

    .line 30
    .local v2, "obj":Ljava/lang/Object;
    const/4 v4, 0x1

    aget-object v1, p0, v4

    check-cast v1, Ljava/lang/reflect/Method;

    .line 31
    .local v1, "method":Ljava/lang/reflect/Method;
    array-length v4, p0

    add-int/lit8 v4, v4, -0x2

    new-array v3, v4, [Ljava/lang/Object;

    .line 32
    .local v3, "objArr2":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, p0

    add-int/lit8 v4, v4, -0x2

    if-ge v0, v4, :cond_0

    .line 33
    add-int/lit8 v4, v0, 0x2

    aget-object v4, p0, v4

    aput-object v4, v3, v0

    .line 32
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    return-object v4
.end method

.method public static native attach(Landroid/app/Application;Landroid/content/Context;)V
.end method

.method public static native azbycx(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static varargs native cB([Ljava/lang/Object;)B
.end method

.method public static varargs native cC([Ljava/lang/Object;)C
.end method

.method public static varargs native cD([Ljava/lang/Object;)D
.end method

.method public static varargs native cF([Ljava/lang/Object;)F
.end method

.method public static varargs native cI([Ljava/lang/Object;)I
.end method

.method public static varargs native cJ([Ljava/lang/Object;)J
.end method

.method public static varargs native cL([Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public static varargs native cS([Ljava/lang/Object;)S
.end method

.method public static varargs native cV([Ljava/lang/Object;)V
.end method

.method public static varargs native cZ([Ljava/lang/Object;)Z
.end method

.method public static native h()V
.end method

.method public static native makeInMemoryDexElements(Ljava/lang/Object;Ljava/util/List;Ljava/lang/String;)[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<",
            "Ljava/io/IOException;",
            ">;",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public static stub()V
    .locals 0

    .prologue
    .line 24
    return-void
.end method
