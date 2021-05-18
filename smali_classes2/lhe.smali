.class public Llhe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lliw;


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Llhe;->a:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 309
    new-instance v0, Lkoi;

    invoke-direct {v0}, Lkoi;-><init>()V

    .line 310
    iget-object v1, p0, Llhe;->a:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    invoke-static {v1}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->c(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;)Lkud;

    move-result-object v1

    invoke-virtual {v1}, Lkud;->b()Lkty;

    move-result-object v1

    invoke-virtual {v1}, Lkty;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkoi;->a(Ljava/lang/String;)V

    .line 311
    iget-object v1, p0, Llhe;->a:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    invoke-static {v1}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->c(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;)Lkud;

    move-result-object v1

    invoke-virtual {v1}, Lkud;->g()Lkuf;

    move-result-object v1

    invoke-virtual {v1}, Lkuf;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkoi;->b(Ljava/lang/String;)V

    .line 312
    iget-object v1, p0, Llhe;->a:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    invoke-static {v1}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->d(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;)Lktp;

    move-result-object v1

    invoke-virtual {v1}, Lktp;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkoi;->c(Ljava/lang/String;)V

    .line 313
    iget-object v1, p0, Llhe;->a:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    invoke-static {v1}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->d(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;)Lktp;

    move-result-object v1

    invoke-virtual {v1}, Lktp;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkoi;->d(Ljava/lang/String;)V

    .line 314
    iget-object v1, p0, Llhe;->a:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    invoke-static {v1}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->d(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;)Lktp;

    move-result-object v1

    invoke-virtual {v1}, Lktp;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkoi;->f(Ljava/lang/String;)V

    .line 315
    iget-object v1, p0, Llhe;->a:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    invoke-static {v1}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->d(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;)Lktp;

    move-result-object v1

    invoke-virtual {v1}, Lktp;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkoi;->g(Ljava/lang/String;)V

    .line 316
    iget-object v1, p0, Llhe;->a:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    invoke-static {v1}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->d(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;)Lktp;

    move-result-object v1

    invoke-virtual {v1}, Lktp;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkoi;->e(Ljava/lang/String;)V

    .line 318
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Llhe;->a:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    const-class v3, Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 319
    const-string v2, "ASSISTANCE_INFO_KEY"

    invoke-virtual {v0}, Lkoi;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    iget-object v0, p0, Llhe;->a:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->startActivity(Landroid/content/Intent;)V

    .line 321
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 325
    iget-object v0, p0, Llhe;->a:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->e(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;)V

    .line 326
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Llhe;->a:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    const-class v2, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 327
    const-string v1, "insurance-data-key"

    iget-object v2, p0, Llhe;->a:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    invoke-static {v2}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->c(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;)Lkud;

    move-result-object v2

    invoke-virtual {v2}, Lkud;->b()Lkty;

    move-result-object v2

    invoke-virtual {v2}, Lkty;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 328
    const-string v1, "higher_coverage_key"

    iget-object v2, p0, Llhe;->a:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    invoke-static {v2}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->d(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;)Lktp;

    move-result-object v2

    invoke-virtual {v2}, Lktp;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 329
    iget-object v1, p0, Llhe;->a:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    invoke-virtual {v1, v0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->startActivity(Landroid/content/Intent;)V

    .line 330
    return-void
.end method
