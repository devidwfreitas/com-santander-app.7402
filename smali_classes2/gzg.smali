.class final Lgzg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Lbfx;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lgzr;

.field final synthetic e:Lgyx;


# direct methods
.method constructor <init>(Lbfx;Landroid/content/Context;Ljava/lang/String;Lgzr;Lgyx;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lgzg;->a:Lbfx;

    iput-object p2, p0, Lgzg;->b:Landroid/content/Context;

    iput-object p3, p0, Lgzg;->c:Ljava/lang/String;

    iput-object p4, p0, Lgzg;->d:Lgzr;

    iput-object p5, p0, Lgzg;->e:Lgyx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 184
    const/4 v0, 0x0

    sput-boolean v0, Lgyy;->a:Z

    .line 185
    iget-object v1, p0, Lgzg;->a:Lbfx;

    iget-object v2, p0, Lgzg;->b:Landroid/content/Context;

    iget-object v3, p0, Lgzg;->c:Ljava/lang/String;

    iget-object v4, p0, Lgzg;->d:Lgzr;

    iget-object v5, p0, Lgzg;->e:Lgyx;

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lgyy;->a(Ljava/lang/Object;Lbfx;Landroid/content/Context;Ljava/lang/String;Lgzr;Lgyx;)V

    .line 186
    return-void
.end method
