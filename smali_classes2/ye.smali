.class public Lye;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field a:Landroid/widget/LinearLayout;

.field b:Landroid/widget/TextView;

.field c:Lxw;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 76
    sget v0, Lla;->termo_aceite_layout_lista:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lye;->a:Landroid/widget/LinearLayout;

    .line 77
    sget v0, Lla;->termo_aceite_lista_titulo:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lye;->b:Landroid/widget/TextView;

    .line 78
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lyd;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lye;-><init>(Landroid/view/View;)V

    return-void
.end method
