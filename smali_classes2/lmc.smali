.class public Llmc;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field final synthetic a:Llly;

.field private b:Lcom/santander/app/seguros/ui/widgets/JustifyTextView;


# direct methods
.method public constructor <init>(Llly;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Llmc;->a:Llly;

    .line 118
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 119
    invoke-direct {p0, p2}, Llmc;->a(Landroid/view/View;)V

    .line 120
    return-void
.end method

.method static synthetic a(Llmc;)Lcom/santander/app/seguros/ui/widgets/JustifyTextView;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Llmc;->b:Lcom/santander/app/seguros/ui/widgets/JustifyTextView;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 123
    const v0, 0x7f10030e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/JustifyTextView;

    iput-object v0, p0, Llmc;->b:Lcom/santander/app/seguros/ui/widgets/JustifyTextView;

    .line 124
    return-void
.end method
