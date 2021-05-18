.class Lri;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lre;


# direct methods
.method constructor <init>(Lre;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lri;->a:Lre;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lri;->a:Lre;

    invoke-static {v0}, Lre;->e(Lre;)Lack;

    move-result-object v0

    sget v1, Llg;->det_subp_msg_padrao_tooltip:I

    invoke-virtual {v0, v1}, Lack;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Laaz;->a(Ljava/lang/String;Landroid/view/View;)V

    .line 212
    return-void
.end method
