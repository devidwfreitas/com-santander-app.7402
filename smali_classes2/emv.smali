.class public final Lemv;
.super Lekn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lekn",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lekp;


# instance fields
.field private final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final c:Lekn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lekn",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lemw;

    invoke-direct {v0}, Lemw;-><init>()V

    sput-object v0, Lemv;->a:Lekp;

    return-void
.end method

.method public constructor <init>(Lejm;Lekn;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lejm;",
            "Lekn",
            "<TE;>;",
            "Ljava/lang/Class",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0}, Lekn;-><init>()V

    .line 58
    new-instance v0, Lenx;

    invoke-direct {v0, p1, p2, p3}, Lenx;-><init>(Lejm;Lekn;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lemv;->c:Lekn;

    .line 60
    iput-object p3, p0, Lemv;->b:Ljava/lang/Class;

    .line 61
    return-void
.end method


# virtual methods
.method public a(Leps;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 85
    if-nez p2, :cond_0

    .line 86
    invoke-virtual {p1}, Leps;->f()Leps;

    .line 96
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-virtual {p1}, Leps;->b()Leps;

    .line 91
    const/4 v0, 0x0

    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_1

    .line 92
    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    .line 93
    iget-object v3, p0, Lemv;->c:Lekn;

    invoke-virtual {v3, p1, v2}, Lekn;->a(Leps;Ljava/lang/Object;)V

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 95
    :cond_1
    invoke-virtual {p1}, Leps;->c()Leps;

    goto :goto_0
.end method

.method public b(Lepo;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 64
    invoke-virtual {p1}, Lepo;->f()Lepr;

    move-result-object v0

    sget-object v1, Lepr;->NULL:Lepr;

    if-ne v0, v1, :cond_0

    .line 65
    invoke-virtual {p1}, Lepo;->j()V

    .line 66
    const/4 v0, 0x0

    .line 80
    :goto_0
    return-object v0

    .line 69
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 70
    invoke-virtual {p1}, Lepo;->a()V

    .line 71
    :goto_1
    invoke-virtual {p1}, Lepo;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lemv;->c:Lekn;

    invoke-virtual {v0, p1}, Lekn;->b(Lepo;)Ljava/lang/Object;

    move-result-object v0

    .line 73
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 75
    :cond_1
    invoke-virtual {p1}, Lepo;->b()V

    .line 76
    iget-object v0, p0, Lemv;->b:Ljava/lang/Class;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    .line 77
    const/4 v0, 0x0

    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 78
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v0, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move-object v0, v1

    .line 80
    goto :goto_0
.end method
