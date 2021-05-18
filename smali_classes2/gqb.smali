.class final Lgqb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lafx;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 1148
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lgpu;->m()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/santander/app/SaldoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1149
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1150
    invoke-static {}, Lgpu;->m()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1151
    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 6

    .prologue
    .line 1178
    new-instance v1, Lgqd;

    invoke-direct {v1, p0, p1}, Lgqd;-><init>(Lgqb;Landroid/app/Activity;)V

    .line 1188
    new-instance v2, Lgqe;

    invoke-direct {v2, p0}, Lgqe;-><init>(Lgqb;)V

    const v0, 0x7f0907e0

    .line 1196
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f0902ef

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v0, 0x7f090208

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p1

    .line 1188
    invoke-static/range {v0 .. v5}, Lmxn;->b(Landroid/app/Activity;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    invoke-static {v0}, Lgpu;->a(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1198
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1143
    invoke-static {p1, p2}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 1155
    const/4 v0, 0x1

    new-array v0, v0, [Lmzp;

    const/4 v1, 0x0

    sget-object v2, Lmzp;->RELOAD_CARTOES:Lmzp;

    aput-object v2, v0, v1

    .line 1159
    new-instance v1, Lmzn;

    invoke-direct {v1}, Lmzn;-><init>()V

    .line 1160
    new-instance v2, Lgqc;

    invoke-direct {v2, p0}, Lgqc;-><init>(Lgqb;)V

    invoke-virtual {v1, v0, v2}, Lmzn;->a([Lmzp;Lfoh;)V

    .line 1169
    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .locals 6

    .prologue
    .line 1202
    new-instance v1, Lgqf;

    invoke-direct {v1, p0, p1}, Lgqf;-><init>(Lgqb;Landroid/app/Activity;)V

    .line 1212
    new-instance v2, Lgqg;

    invoke-direct {v2, p0}, Lgqg;-><init>(Lgqb;)V

    const v0, 0x7f0907e0

    .line 1220
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f0902ef

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v0, 0x7f090208

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p1

    .line 1212
    invoke-static/range {v0 .. v5}, Lmxn;->b(Landroid/app/Activity;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    invoke-static {v0}, Lgpu;->a(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1221
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 1173
    sget-object v0, Ljox;->SUBMENU_ITEM_SIMULAR_CONTRATAR:Ljox;

    invoke-static {v0}, Lgpu;->a(Ljox;)V

    .line 1174
    return-void
.end method
