.class public Ldse;
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
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final b:Ldps;

.field public final c:Ldsl;

.field public d:Z


# direct methods
.method private constructor <init>(Ldsl;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldse;->d:Z

    iput-object v1, p0, Ldse;->a:Ljava/lang/Object;

    iput-object v1, p0, Ldse;->b:Ldps;

    iput-object p1, p0, Ldse;->c:Ldsl;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ldps;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ldps;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldse;->d:Z

    iput-object p1, p0, Ldse;->a:Ljava/lang/Object;

    iput-object p2, p0, Ldse;->b:Ldps;

    const/4 v0, 0x0

    iput-object v0, p0, Ldse;->c:Ldsl;

    return-void
.end method

.method public static a(Ldsl;)Ldse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ldsl;",
            ")",
            "Ldse",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Ldse;

    invoke-direct {v0, p0}, Ldse;-><init>(Ldsl;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Ldps;)Ldse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ldps;",
            ")",
            "Ldse",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Ldse;

    invoke-direct {v0, p0, p1}, Ldse;-><init>(Ljava/lang/Object;Ldps;)V

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, Ldse;->c:Ldsl;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
