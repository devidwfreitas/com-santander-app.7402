.class Lmw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lmr;


# direct methods
.method constructor <init>(Lmr;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lmw;->b:Lmr;

    iput-object p2, p0, Lmw;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 228
    invoke-static {}, Lzs;->a()Lzs;

    move-result-object v0

    iget-object v1, p0, Lmw;->b:Lmr;

    invoke-virtual {v1}, Lmr;->e()Lack;

    move-result-object v1

    iget-object v2, p0, Lmw;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lzs;->a(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void
.end method
