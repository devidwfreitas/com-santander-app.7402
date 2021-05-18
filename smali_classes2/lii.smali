.class public Llii;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field a:Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;

.field final synthetic b:Llig;


# direct methods
.method public constructor <init>(Llig;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Llii;->b:Llig;

    .line 98
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 99
    invoke-direct {p0, p2}, Llii;->a(Landroid/view/View;)V

    .line 100
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 109
    const v0, 0x7f1006e6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;

    iput-object v0, p0, Llii;->a:Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;

    .line 110
    return-void
.end method
