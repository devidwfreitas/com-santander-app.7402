.class Lltq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lkus;

.field final synthetic c:Lltm;


# direct methods
.method constructor <init>(Lltm;ILkus;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lltq;->c:Lltm;

    iput p2, p0, Lltq;->a:I

    iput-object p3, p0, Lltq;->b:Lkus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 130
    iget-object v0, p0, Lltq;->c:Lltm;

    invoke-static {v0}, Lltm;->a(Lltm;)Lltt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lltq;->c:Lltm;

    invoke-static {v0}, Lltm;->a(Lltm;)Lltt;

    move-result-object v0

    iget v1, p0, Lltq;->a:I

    iget-object v2, p0, Lltq;->b:Lkus;

    invoke-interface {v0, v1, v2}, Lltt;->d(ILkus;)V

    .line 133
    :cond_0
    return-void
.end method
