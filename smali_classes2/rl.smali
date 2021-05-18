.class Lrl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lacg;

.field final synthetic b:Lre;


# direct methods
.method constructor <init>(Lre;Lacg;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lrl;->b:Lre;

    iput-object p2, p0, Lrl;->a:Lacg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lrl;->a:Lacg;

    invoke-virtual {v0}, Lacg;->n()Lto;

    move-result-object v0

    invoke-virtual {v0}, Lto;->r()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Laaz;->a(Ljava/lang/String;Landroid/view/View;)V

    .line 273
    return-void
.end method
