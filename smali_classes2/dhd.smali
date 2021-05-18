.class public abstract Ldhd;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ldhd;->a:I

    iput-object p2, p0, Ldhd;->b:Ljava/lang/String;

    iput-object p3, p0, Ldhd;->c:Ljava/lang/Object;

    invoke-static {}, Ldho;->a()Ldhj;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldhj;->a(Ldhd;)V

    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Ljava/lang/Object;Ldhe;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ldhd;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static a(ILjava/lang/String;Ljava/lang/Boolean;)Ldhf;
    .locals 1

    new-instance v0, Ldhf;

    invoke-direct {v0, p0, p1, p2}, Ldhf;-><init>(ILjava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public static a(ILjava/lang/String;I)Ldhg;
    .locals 2

    new-instance v0, Ldhg;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Ldhg;-><init>(ILjava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static a(ILjava/lang/String;J)Ldhh;
    .locals 2

    new-instance v0, Ldhh;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Ldhh;-><init>(ILjava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;)Ldhi;
    .locals 1

    new-instance v0, Ldhi;

    invoke-direct {v0, p0, p1, p2}, Ldhi;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected abstract a(Ldhl;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldhl;",
            ")TT;"
        }
    .end annotation
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ldhd;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Ldhd;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public c()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-static {}, Ldho;->b()Ldhk;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldhk;->a(Ldhd;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Ldhd;->a:I

    return v0
.end method
