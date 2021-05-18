.class public Lmce;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lkrz;

.field final synthetic b:Lkqp;

.field final synthetic c:Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;Lkrz;Lkqp;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lmce;->c:Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;

    iput-object p2, p0, Lmce;->a:Lkrz;

    iput-object p3, p0, Lmce;->b:Lkqp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 231
    iget-object v0, p0, Lmce;->c:Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;

    sget-object v1, Lmch;->PLAN2:Lmch;

    invoke-static {v0, v1}, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->a(Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;Lmch;)V

    .line 232
    iget-object v0, p0, Lmce;->a:Lkrz;

    invoke-virtual {v0}, Lkrz;->g()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmce;->a:Lkrz;

    invoke-virtual {v0}, Lkrz;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 233
    iget-object v0, p0, Lmce;->c:Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;

    iget-object v1, p0, Lmce;->a:Lkrz;

    invoke-virtual {v1}, Lkrz;->g()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->a(Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;Ljava/util/List;)Ljava/util/List;

    .line 234
    iget-object v0, p0, Lmce;->c:Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;

    sget-object v1, Lmch;->PLAN2:Lmch;

    iget-object v2, p0, Lmce;->c:Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;

    invoke-static {v2}, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->a(Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lmce;->b:Lkqp;

    invoke-static {v0, v1, v2, v3}, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->a(Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;Lmch;Ljava/util/List;Lkqp;)V

    .line 236
    :cond_0
    iget-object v0, p0, Lmce;->a:Lkrz;

    invoke-virtual {v0}, Lkrz;->f()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmce;->a:Lkrz;

    invoke-virtual {v0}, Lkrz;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 237
    iget-object v0, p0, Lmce;->c:Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;

    iget-object v1, p0, Lmce;->a:Lkrz;

    invoke-virtual {v1}, Lkrz;->f()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->b(Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;Ljava/util/List;)Ljava/util/List;

    .line 240
    :cond_1
    iget-object v0, p0, Lmce;->c:Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;

    sget-object v1, Lmch;->PLAN2:Lmch;

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->setPlanSelected(Lmch;)V

    .line 242
    sget-object v0, Lkqm;->INSTANCE:Lkqm;

    iget-object v1, p0, Lmce;->c:Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;

    invoke-static {v1}, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->a(Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkqm;->setmCoverages(Ljava/util/List;)V

    .line 243
    sget-object v0, Lkqm;->INSTANCE:Lkqm;

    iget-object v1, p0, Lmce;->c:Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;

    invoke-static {v1}, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->b(Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkqm;->setmAssistances(Ljava/util/List;)V

    .line 244
    return-void
.end method
