.class Lpv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lot;


# instance fields
.field final synthetic a:Lpc;


# direct methods
.method constructor <init>(Lpc;)V
    .locals 0

    .prologue
    .line 1193
    iput-object p1, p0, Lpv;->a:Lpc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Labv;)V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 1197
    move-object v0, p1

    check-cast v0, Lov;

    invoke-virtual {v0}, Lov;->b()Ljava/lang/String;

    move-result-object v0

    .line 1198
    check-cast p1, Lov;

    invoke-virtual {p1}, Lov;->c()Ljava/lang/Boolean;

    move-result-object v1

    .line 1199
    iget-object v2, p0, Lpv;->a:Lpc;

    invoke-static {v2}, Lpc;->I(Lpc;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1200
    iget-object v2, p0, Lpv;->a:Lpc;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lpc;->a(Lpc;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 1202
    const-string v2, "[^0-9\u02c6/]"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1203
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1204
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 1205
    aget-object v3, v0, v7

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget-object v4, v0, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x0

    aget-object v0, v0, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/Calendar;->set(III)V

    .line 1207
    iget-object v0, p0, Lpv;->a:Lpc;

    invoke-static {v0}, Lpc;->ae(Lpc;)Lace;

    move-result-object v0

    iget-object v3, p0, Lpv;->a:Lpc;

    iget-object v4, p0, Lpv;->a:Lpc;

    invoke-static {v4}, Lpc;->ad(Lpc;)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lpc;->a(Lpc;Ljava/util/Calendar;Ljava/lang/Integer;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v0, v2}, Lace;->a(Ljava/util/Calendar;)V

    .line 1208
    if-eqz v1, :cond_1

    .line 1209
    iget-object v0, p0, Lpv;->a:Lpc;

    invoke-static {v0}, Lpc;->af(Lpc;)Lace;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lace;->g(Z)V

    .line 1214
    :goto_0
    sget-object v0, Labt;->PROGRESSIVE_INDEX:Labt;

    invoke-virtual {v0}, Labt;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1215
    iget-object v1, p0, Lpv;->a:Lpc;

    invoke-static {v1}, Lpc;->Z(Lpc;)Lom;

    move-result-object v1

    invoke-virtual {v1, v0}, Lom;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lpv;->a:Lpc;

    invoke-static {v1}, Lpc;->Z(Lpc;)Lom;

    move-result-object v1

    invoke-virtual {v1, v0}, Lom;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1216
    iget-object v0, p0, Lpv;->a:Lpc;

    invoke-static {v0}, Lpc;->k(Lpc;)Lacg;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lpv;->a:Lpc;

    invoke-static {v2}, Lpc;->ah(Lpc;)Lace;

    move-result-object v2

    invoke-virtual {v2}, Lace;->k()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lpv;->a:Lpc;

    iget-object v3, p0, Lpv;->a:Lpc;

    .line 1217
    invoke-static {v3}, Lpc;->ai(Lpc;)Lace;

    move-result-object v3

    invoke-virtual {v3}, Lace;->k()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lpc;->a(Lpc;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lpv;->a:Lpc;

    iget-object v3, p0, Lpv;->a:Lpc;

    .line 1218
    invoke-static {v3}, Lpc;->aj(Lpc;)Lace;

    move-result-object v3

    invoke-virtual {v3}, Lace;->k()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lpc;->a(Lpc;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1216
    invoke-virtual {v0, v1}, Lacg;->d(Ljava/lang/String;)V

    .line 1220
    sget-object v0, Labt;->MAX_DEADLINE:Labt;

    invoke-virtual {v0}, Labt;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1221
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1222
    iget-object v2, p0, Lpv;->a:Lpc;

    invoke-static {v2}, Lpc;->Z(Lpc;)Lom;

    move-result-object v2

    invoke-virtual {v2, v0}, Lom;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v8, v0}, Ljava/util/Calendar;->add(II)V

    .line 1223
    iget-object v0, p0, Lpv;->a:Lpc;

    invoke-static {v0}, Lpc;->k(Lpc;)Lacg;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lpv;->a:Lpc;

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lpc;->a(Lpc;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lpv;->a:Lpc;

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3, v1}, Lpc;->a(Lpc;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lacg;->e(Ljava/lang/String;)V

    .line 1226
    :cond_0
    iget-object v0, p0, Lpv;->a:Lpc;

    invoke-static {v0}, Lpc;->k(Lpc;)Lacg;

    move-result-object v0

    invoke-virtual {v0}, Lacg;->p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LCI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lpv;->a:Lpc;

    .line 1227
    invoke-static {v0}, Lpc;->ak(Lpc;)Lace;

    move-result-object v0

    invoke-virtual {v0}, Lace;->E()Ljava/lang/String;

    move-result-object v0

    const-string v1, "C"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1228
    iget-object v0, p0, Lpv;->a:Lpc;

    invoke-static {v0}, Lpc;->al(Lpc;)V

    .line 1232
    :goto_1
    return-void

    .line 1211
    :cond_1
    iget-object v0, p0, Lpv;->a:Lpc;

    iget-object v1, p0, Lpv;->a:Lpc;

    invoke-static {v1}, Lpc;->ag(Lpc;)Lace;

    move-result-object v1

    invoke-virtual {v1}, Lace;->k()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v0, v1}, Lpc;->c(Lpc;Ljava/util/Calendar;)V

    goto/16 :goto_0

    .line 1230
    :cond_2
    iget-object v0, p0, Lpv;->a:Lpc;

    invoke-static {v0}, Lpc;->am(Lpc;)V

    goto :goto_1
.end method

.method public a(Laby;)V
    .locals 2

    .prologue
    .line 1236
    iget-object v0, p0, Lpv;->a:Lpc;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lpc;->b(Lpc;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 1237
    iget-object v0, p0, Lpv;->a:Lpc;

    invoke-virtual {v0}, Lpc;->e()Lack;

    move-result-object v0

    new-instance v1, Lpw;

    invoke-direct {v1, p0}, Lpw;-><init>(Lpv;)V

    invoke-static {v0, v1}, Laad;->a(Landroid/content/Context;Laar;)V

    .line 1248
    return-void
.end method
