.class Lidp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;


# instance fields
.field final synthetic a:Lido;


# direct methods
.method constructor <init>(Lido;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lidp;->a:Lido;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 3

    .prologue
    .line 56
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lidf;

    .line 58
    iget-boolean v1, v0, Lidf;->a:Z

    if-eqz v1, :cond_0

    .line 59
    iget-object v1, v0, Lidf;->d:Landroid/widget/ImageView;

    const v2, 0x7f02006b

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 63
    :goto_0
    iget-boolean v0, v0, Lidf;->a:Z

    invoke-static {v0, p3}, Libm;->a(ZI)V

    .line 64
    const/4 v0, 0x0

    return v0

    .line 61
    :cond_0
    iget-object v1, v0, Lidf;->d:Landroid/widget/ImageView;

    const v2, 0x7f020061

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
