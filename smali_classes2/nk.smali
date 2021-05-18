.class public Lnk;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 60
    sget v0, Lla;->cdb_progressivo_lista_data:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnk;->a:Landroid/widget/TextView;

    .line 61
    sget v0, Lla;->cdb_progressivo_lista_percentagem:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnk;->b:Landroid/widget/TextView;

    .line 63
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lnj;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lnk;-><init>(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lnk;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lnk;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b(Lnk;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lnk;->a:Landroid/widget/TextView;

    return-object v0
.end method
