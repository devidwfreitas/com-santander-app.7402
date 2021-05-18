.class Lsq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lacb;

.field final synthetic b:Lsr;

.field final synthetic c:Lsp;


# direct methods
.method constructor <init>(Lsp;Lacb;Lsr;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lsq;->c:Lsp;

    iput-object p2, p0, Lsq;->a:Lacb;

    iput-object p3, p0, Lsq;->b:Lsr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lsq;->a:Lacb;

    invoke-virtual {v0}, Lacb;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lsq;->b:Lsr;

    iget-object v1, v1, Lsr;->g:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Laaz;->a(Ljava/lang/String;Landroid/view/View;)V

    .line 74
    return-void
.end method
