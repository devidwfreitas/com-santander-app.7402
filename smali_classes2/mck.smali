.class public Lmck;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/widgets/PlanChoiceView;

.field private b:Z

.field private c:I

.field private d:I

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/widgets/PlanChoiceView;IILandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 121
    iput-object p1, p0, Lmck;->a:Lcom/santander/app/seguros/ui/widgets/PlanChoiceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmck;->b:Z

    .line 122
    iput p2, p0, Lmck;->c:I

    .line 123
    iput p3, p0, Lmck;->d:I

    .line 124
    iput-object p4, p0, Lmck;->e:Landroid/widget/ImageView;

    .line 125
    iput-object p5, p0, Lmck;->f:Landroid/widget/ImageView;

    .line 126
    iput-object p6, p0, Lmck;->g:Landroid/view/View$OnClickListener;

    .line 127
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmck;->b:Z

    .line 148
    iget-object v0, p0, Lmck;->f:Landroid/widget/ImageView;

    iget v1, p0, Lmck;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 149
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 131
    iget-boolean v1, p0, Lmck;->b:Z

    if-nez v1, :cond_1

    .line 133
    iget-object v1, p0, Lmck;->f:Landroid/widget/ImageView;

    iget v2, p0, Lmck;->c:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 135
    iget-object v1, p0, Lmck;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 141
    :goto_0
    iget-boolean v1, p0, Lmck;->b:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lmck;->b:Z

    .line 143
    iget-object v0, p0, Lmck;->g:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 144
    return-void

    .line 137
    :cond_1
    iget-object v1, p0, Lmck;->f:Landroid/widget/ImageView;

    iget v2, p0, Lmck;->d:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 139
    iget-object v1, p0, Lmck;->e:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
