.class public Lfqn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/agendamentos/activity/AgendamentosActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/agendamentos/activity/AgendamentosActivity;)V
    .locals 0

    .prologue
    .line 639
    iput-object p1, p0, Lfqn;->a:Lcom/santander/app/agendamentos/activity/AgendamentosActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 644
    iget-object v0, p0, Lfqn;->a:Lcom/santander/app/agendamentos/activity/AgendamentosActivity;

    invoke-static {v0}, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->i(Lcom/santander/app/agendamentos/activity/AgendamentosActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-lez v0, :cond_0

    .line 645
    iget-object v0, p0, Lfqn;->a:Lcom/santander/app/agendamentos/activity/AgendamentosActivity;

    invoke-static {v0}, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->i(Lcom/santander/app/agendamentos/activity/AgendamentosActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget-object v1, p0, Lfqn;->a:Lcom/santander/app/agendamentos/activity/AgendamentosActivity;

    invoke-static {v1}, Lcom/santander/app/agendamentos/activity/AgendamentosActivity;->i(Lcom/santander/app/agendamentos/activity/AgendamentosActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 647
    :cond_0
    return-void
.end method