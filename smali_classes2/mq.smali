.class Lmq;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/CheckBox;

.field private b:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 50
    sget v0, Lla;->car_check_recusa:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lmq;->a:Landroid/widget/CheckBox;

    .line 51
    sget v0, Lla;->car_recusa_texto:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmq;->b:Landroid/widget/TextView;

    .line 52
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lmo;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lmq;-><init>(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lmq;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lmq;->a:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic b(Lmq;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lmq;->b:Landroid/widget/TextView;

    return-object v0
.end method
