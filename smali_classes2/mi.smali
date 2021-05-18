.class Lmi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lmj;

.field final synthetic b:Lma;


# direct methods
.method constructor <init>(Lma;Lmj;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lmi;->b:Lma;

    iput-object p2, p0, Lmi;->a:Lmj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 213
    iget-object v0, p0, Lmi;->b:Lma;

    invoke-static {v0}, Lma;->e(Lma;)Lmr;

    move-result-object v0

    invoke-virtual {v0}, Lmr;->a()Lacg;

    move-result-object v0

    .line 214
    iget-object v1, p0, Lmi;->a:Lmj;

    iget-object v1, v1, Lmj;->a:Lace;

    invoke-virtual {v0, v1}, Lacg;->a(Lace;)V

    .line 215
    invoke-static {}, Lzs;->a()Lzs;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lzs;->b(Landroid/content/Context;Lacg;)V

    .line 216
    return-void
.end method
