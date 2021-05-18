.class final Lgyz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Lbfx;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lgzr;

.field final synthetic d:Lgyx;


# direct methods
.method constructor <init>(Lbfx;Landroid/content/Context;Lgzr;Lgyx;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lgyz;->a:Lbfx;

    iput-object p2, p0, Lgyz;->b:Landroid/content/Context;

    iput-object p3, p0, Lgyz;->c:Lgzr;

    iput-object p4, p0, Lgyz;->d:Lgyx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 91
    const/4 v0, 0x0

    sput-boolean v0, Lgyy;->a:Z

    .line 92
    iget-object v0, p0, Lgyz;->a:Lbfx;

    iget-object v1, p0, Lgyz;->b:Landroid/content/Context;

    iget-object v2, p0, Lgyz;->c:Lgzr;

    iget-object v3, p0, Lgyz;->d:Lgyx;

    invoke-static {p1, v0, v1, v2, v3}, Lgyy;->a(Ljava/lang/Object;Lbfx;Landroid/content/Context;Lgzr;Lgyx;)V

    .line 93
    return-void
.end method
