.class Lmpo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lmpp;

.field final synthetic b:Lmlr;

.field final synthetic c:Lmpm;


# direct methods
.method constructor <init>(Lmpm;Lmpp;Lmlr;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lmpo;->c:Lmpm;

    iput-object p2, p0, Lmpo;->a:Lmpp;

    iput-object p3, p0, Lmpo;->b:Lmlr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lmpo;->a:Lmpp;

    iget-object v0, v0, Lmpp;->itemView:Landroid/view/View;

    iget-object v1, p0, Lmpo;->b:Lmlr;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 68
    iget-object v0, p0, Lmpo;->c:Lmpm;

    invoke-static {v0}, Lmpm;->a(Lmpm;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lmpo;->a:Lmpp;

    iget-object v1, v1, Lmpp;->itemView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 69
    return-void
.end method
