.class Lbkh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final a:J = -0x2288d511ce8549edL


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lbkh;->b:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Lbkh;->c:Ljava/lang/String;

    .line 77
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lbkg;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lbkh;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 80
    new-instance v0, Lbkf;

    iget-object v1, p0, Lbkh;->b:Ljava/lang/String;

    iget-object v2, p0, Lbkh;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lbkf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
