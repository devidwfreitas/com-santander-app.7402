.class public Lcom/santander/app/seguros/ui/widgets/PlanChoiceView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/widgets/PlanChoiceView;->a(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/widgets/PlanChoiceView;->a(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/widgets/PlanChoiceView;->a(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 42
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/widgets/PlanChoiceView;->a(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 46
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 47
    const v1, 0x7f040346

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/PlanChoiceView;->a:Landroid/view/View;

    .line 48
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/PlanChoiceView;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/PlanChoiceView;->addView(Landroid/view/View;)V

    .line 49
    iput-object p1, p0, Lcom/santander/app/seguros/ui/widgets/PlanChoiceView;->b:Landroid/content/Context;

    .line 50
    return-void
.end method

.method private a(Lmcl;)V
    .locals 13

    .prologue
    const v3, 0x7f0205ec

    const v2, 0x7f020223

    .line 79
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/PlanChoiceView;->a:Landroid/view/View;

    const v1, 0x7f10093e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/widget/LinearLayout;

    .line 80
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/PlanChoiceView;->a:Landroid/view/View;

    const v1, 0x7f10093f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/LinearLayout;

    .line 81
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/PlanChoiceView;->a:Landroid/view/View;

    const v1, 0x7f10108b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 82
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/PlanChoiceView;->a:Landroid/view/View;

    const v1, 0x7f101091

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 83
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/PlanChoiceView;->a:Landroid/view/View;

    const v1, 0x7f101087

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 84
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/PlanChoiceView;->a:Landroid/view/View;

    const v1, 0x7f10108d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 86
    new-instance v0, Lmck;

    new-instance v6, Lmci;

    invoke-direct {v6, p0, p1}, Lmci;-><init>(Lcom/santander/app/seguros/ui/widgets/PlanChoiceView;Lmcl;)V

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lmck;-><init>(Lcom/santander/app/seguros/ui/widgets/PlanChoiceView;IILandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/view/View$OnClickListener;)V

    .line 95
    new-instance v4, Lmck;

    new-instance v10, Lmcj;

    invoke-direct {v10, p0, p1}, Lmcj;-><init>(Lcom/santander/app/seguros/ui/widgets/PlanChoiceView;Lmcl;)V

    move-object v5, p0

    move v6, v2

    move v7, v3

    invoke-direct/range {v4 .. v10}, Lmck;-><init>(Lcom/santander/app/seguros/ui/widgets/PlanChoiceView;IILandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/view/View$OnClickListener;)V

    .line 103
    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    invoke-virtual {v12, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    return-void
.end method


# virtual methods
.method public setOnChoiceClickListener(Lmcl;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/widgets/PlanChoiceView;->a(Lmcl;)V

    .line 75
    return-void
.end method
