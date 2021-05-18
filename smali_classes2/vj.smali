.class Lvj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lvi;


# direct methods
.method constructor <init>(Lvi;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lvj;->a:Lvi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lvj;->a:Lvi;

    .line 79
    invoke-static {v0}, Lvi;->a(Lvi;)Landroid/content/Context;

    move-result-object v0

    sget v1, Llg;->tag_name_listagem_coe:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lvj;->a:Lvi;

    .line 80
    invoke-static {v1}, Lvi;->a(Lvi;)Landroid/content/Context;

    move-result-object v1

    sget v2, Llg;->tag_valor_central:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-static {v0, v1}, Lzy;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lvj;->a:Lvi;

    invoke-static {v0}, Lvi;->a(Lvi;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Laad;->a(Landroid/content/Context;)V

    .line 83
    return-void
.end method
