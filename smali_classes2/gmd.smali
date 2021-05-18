.class Lgmd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lgma;


# direct methods
.method constructor <init>(Lgma;I)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lgmd;->b:Lgma;

    iput p2, p0, Lgmd;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 191
    iget-object v0, p0, Lgmd;->b:Lgma;

    iget-object v0, v0, Lgma;->c:Lgly;

    invoke-static {v0}, Lgly;->f(Lgly;)Lgla;

    move-result-object v1

    iget-object v0, p0, Lgmd;->b:Lgma;

    iget-object v0, v0, Lgma;->b:Ljava/util/List;

    iget v2, p0, Lgmd;->a:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljde;

    invoke-interface {v1, v0}, Lgla;->a(Ljava/lang/Object;)V

    .line 192
    return-void
.end method
