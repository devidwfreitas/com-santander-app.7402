.class public Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;
.super Lgrs;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "sinister-code"

.field public static final b:Ljava/lang/String; = "sinister-code"

.field public static final c:Ljava/lang/String; = "bank-id"

.field public static final d:Ljava/lang/String; = "details_certificate_key"

.field public static final e:Ljava/lang/String; = "last-certificate-key"

.field public static final f:Ljava/lang/String; = "033 - SANTANDER"

.field private static final g:Ljava/lang/String; = "99999"

.field private static final w:I = 0x22b8


# instance fields
.field private A:Landroid/widget/EditText;

.field private B:Landroid/widget/EditText;

.field private C:Landroid/widget/Button;

.field private D:Lbr/com/zup/multistatelayout/MultiStateLayout;

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:Lkum;

.field private H:Lkve;

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Lmli;

.field private L:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lkun;",
            ">;"
        }
    .end annotation
.end field

.field private M:Lmqc;

.field private N:Lmli;

.field private x:Lkze;

.field private y:Landroid/widget/AutoCompleteTextView;

.field private z:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->F:Ljava/lang/String;

    return-object p1
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 337
    .line 338
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 339
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 340
    :cond_0
    invoke-static {p1}, Lmhj;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 341
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v2, :cond_1

    .line 342
    const/16 v1, 0x30

    invoke-static {v0, v1, v2}, Lmhj;->a(Ljava/lang/String;CI)Ljava/lang/String;

    move-result-object v0

    .line 348
    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 164
    const v0, 0x7f10010f

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/zup/multistatelayout/MultiStateLayout;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->D:Lbr/com/zup/multistatelayout/MultiStateLayout;

    .line 166
    const v0, 0x7f10060b

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->z:Landroid/widget/EditText;

    .line 167
    const v0, 0x7f10060c

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->A:Landroid/widget/EditText;

    .line 168
    const v0, 0x7f10060e

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->B:Landroid/widget/EditText;

    .line 169
    const v0, 0x7f100611

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->C:Landroid/widget/Button;

    .line 170
    const v0, 0x7f10060a

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->y:Landroid/widget/AutoCompleteTextView;

    .line 171
    return-void
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->i()V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->a(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;Lmli;)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->b(Lmli;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 253
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->J:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 254
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkue;

    .line 255
    invoke-virtual {v0}, Lkue;->a()Lkud;

    move-result-object v0

    .line 256
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lkud;->b()Lkty;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lkud;->b()Lkty;

    move-result-object v2

    invoke-virtual {v2}, Lkty;->c()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 258
    :try_start_0
    invoke-virtual {v0}, Lkud;->b()Lkty;

    move-result-object v2

    invoke-virtual {v2}, Lkty;->c()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xd

    invoke-virtual {v0}, Lkud;->b()Lkty;

    move-result-object v4

    invoke-virtual {v4}, Lkty;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 259
    const-string v3, " "

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->J:Ljava/lang/String;

    const-string v4, " "

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 260
    invoke-virtual {v0}, Lkud;->b()Lkty;

    move-result-object v0

    invoke-virtual {v0}, Lkty;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->F:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :cond_1
    return-void

    .line 263
    :catch_0
    move-exception v0

    .line 264
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Lmli;)V
    .locals 3

    .prologue
    .line 410
    if-eqz p1, :cond_2

    .line 414
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Lmli;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 415
    invoke-virtual {p1}, Lmli;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 416
    new-instance v2, Lkun;

    invoke-direct {v2}, Lkun;-><init>()V

    .line 417
    invoke-virtual {p1}, Lmli;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmkq;

    invoke-virtual {v0}, Lmkq;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lkun;->b(Ljava/lang/String;)V

    .line 418
    invoke-virtual {p1}, Lmli;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmkq;

    invoke-virtual {v0}, Lmkq;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lkun;->a(Ljava/lang/String;)V

    .line 419
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->L:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 424
    :cond_1
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->L:Ljava/util/ArrayList;

    new-instance v1, Llqk;

    invoke-direct {v1, p0}, Llqk;-><init>(Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 426
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090009

    iget-object v2, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->L:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 427
    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->y:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 433
    :cond_2
    return-void
.end method

.method public static synthetic b(Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;Ljava/util/List;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/util/List;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lktt;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 274
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lktt;

    .line 275
    invoke-virtual {v0}, Lktt;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkts;

    .line 276
    iget-object v3, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->J:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lkts;->e()Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->J:Ljava/lang/String;

    const-string v5, " "

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 277
    invoke-virtual {v0}, Lkts;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 282
    :goto_0
    return-object v0

    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method public static synthetic b(Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;Lmli;)Lmli;
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->N:Lmli;

    return-object p1
.end method

.method private b()V
    .locals 3

    .prologue
    .line 175
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->y:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->G:Lkum;

    iget-object v2, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->z:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkum;->g(Ljava/lang/String;)V

    .line 179
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->G:Lkum;

    invoke-virtual {v1, v0}, Lkum;->f(Ljava/lang/String;)V

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->G:Lkum;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->H:Lkve;

    invoke-virtual {v1}, Lkve;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkum;->d(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->G:Lkum;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->H:Lkve;

    invoke-virtual {v1}, Lkve;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkum;->b(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->G:Lkum;

    invoke-static {}, Lmzr;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkum;->i(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->G:Lkum;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->H:Lkve;

    invoke-virtual {v1}, Lkve;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkum;->e(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->G:Lkum;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->A:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->B:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkum;->h(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->G:Lkum;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->H:Lkve;

    invoke-virtual {v1}, Lkve;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkum;->c(Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->G:Lkum;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->B:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkum;->a(Ljava/lang/String;)V

    .line 190
    sget-object v0, Lmge;->INSTANCE:Lmge;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->y:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmge;->setCodeNameBank(Ljava/lang/String;)V

    .line 191
    sget-object v0, Lmge;->INSTANCE:Lmge;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->G:Lkum;

    invoke-virtual {v0, v1}, Lmge;->setBankData(Lkum;)V

    .line 193
    return-void
.end method

.method public static synthetic b(Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->g()V

    return-void
.end method

.method private b(Lmli;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 528
    .line 530
    invoke-virtual {p1}, Lmli;->a()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 532
    new-instance v2, Landroid/app/Dialog;

    invoke-direct {v2, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 533
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 534
    const v0, 0x7f040148

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 535
    const v0, 0x7f1003fa

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->y:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 537
    const v0, 0x7f1006a9

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 538
    const v0, 0x7f1006aa

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 540
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 541
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 542
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 544
    const/16 v4, 0x11

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 546
    const/4 v4, -0x1

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 547
    const/4 v4, -0x2

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 549
    invoke-virtual {v1, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 551
    invoke-virtual {v2, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 557
    const v1, 0x7f1006ab

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 559
    new-instance v3, Lgrz;

    invoke-virtual {p1}, Lmli;->a()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4, p0}, Lgrz;-><init>(Ljava/util/List;Landroid/content/Context;)V

    .line 560
    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 561
    new-instance v4, Llpu;

    invoke-direct {v4, p0, v2}, Llpu;-><init>(Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 603
    const v1, 0x7f10069c

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 604
    new-instance v4, Llpw;

    invoke-direct {v4, p0, v2}, Llpw;-><init>(Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 614
    new-instance v1, Llpx;

    invoke-direct {v1, p0, v0, v3}, Llpx;-><init>(Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;Landroid/widget/EditText;Lgrz;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 636
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 637
    return-void
.end method

.method public static synthetic c(Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;)Lbr/com/zup/multistatelayout/MultiStateLayout;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->D:Lbr/com/zup/multistatelayout/MultiStateLayout;

    return-object v0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->h()V

    .line 197
    sget-object v0, Lmge;->INSTANCE:Lmge;

    invoke-virtual {v0}, Lmge;->getBankData()Lkum;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 200
    sget-object v0, Lmge;->INSTANCE:Lmge;

    invoke-virtual {v0}, Lmge;->getBankData()Lkum;

    move-result-object v0

    invoke-virtual {v0}, Lkum;->h()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lmge;->INSTANCE:Lmge;

    invoke-virtual {v2}, Lmge;->getBankData()Lkum;

    move-result-object v2

    invoke-virtual {v2}, Lkum;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sget-object v3, Lmge;->INSTANCE:Lmge;

    invoke-virtual {v3}, Lmge;->getBankData()Lkum;

    move-result-object v3

    invoke-virtual {v3}, Lkum;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 202
    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->z:Landroid/widget/EditText;

    sget-object v2, Lmge;->INSTANCE:Lmge;

    invoke-virtual {v2}, Lmge;->getBankData()Lkum;

    move-result-object v2

    invoke-virtual {v2}, Lkum;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->A:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->B:Landroid/widget/EditText;

    sget-object v1, Lmge;->INSTANCE:Lmge;

    invoke-virtual {v1}, Lmge;->getBankData()Lkum;

    move-result-object v1

    invoke-virtual {v1}, Lkum;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->I:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->y:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->I:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->e()V

    .line 222
    :goto_0
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->C:Landroid/widget/Button;

    new-instance v1, Llpt;

    invoke-direct {v1, p0}, Llpt;-><init>(Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->f()V

    .line 230
    return-void

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->y:Landroid/widget/AutoCompleteTextView;

    sget-object v1, Lmge;->INSTANCE:Lmge;

    invoke-virtual {v1}, Lmge;->getCodeNameBank()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->J:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 216
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->g()V

    goto :goto_0

    .line 218
    :cond_2
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->d()V

    goto :goto_0
.end method

.method public static synthetic d(Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->I:Ljava/lang/String;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 234
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->J:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    :goto_0
    return-void

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->D:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v1, Laor;->LOADING:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 236
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->x:Lkze;

    new-instance v1, Llqc;

    invoke-direct {v1, p0}, Llqc;-><init>(Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;)V

    new-instance v2, Llqd;

    invoke-direct {v2, p0}, Llqd;-><init>(Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;)V

    invoke-interface {v0, v1, v2}, Lkze;->a(Lkxl;Lkxl;)V

    goto :goto_0
.end method

.method public static synthetic e(Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;)Landroid/widget/AutoCompleteTextView;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->y:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 286
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->D:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v1, Laor;->LOADING:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 287
    new-instance v0, Lmlj;

    invoke-direct {v0}, Lmlj;-><init>()V

    .line 288
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmlj;->setConnUuid(Ljava/lang/String;)V

    .line 289
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmlj;->setTokenSessao(Ljava/lang/String;)V

    .line 291
    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->M:Lmqc;

    new-instance v2, Llqe;

    invoke-direct {v2, p0}, Llqe;-><init>(Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;)V

    invoke-virtual {v1, v2, v0}, Lmqc;->a(Lgkw;Lmlj;)V

    .line 316
    return-void
.end method

.method public static synthetic f(Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;)Lmli;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->N:Lmli;

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->y:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Llqf;

    invoke-direct {v1, p0}, Llqf;-><init>(Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->y:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Llqg;

    invoke-direct {v1, p0}, Llqg;-><init>(Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 334
    return-void
.end method

.method public static synthetic g(Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->z:Landroid/widget/EditText;

    return-object v0
.end method

.method private g()V
    .locals 4

    .prologue
    .line 352
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->F:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->D:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v1, Laor;->LOADING:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 354
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->x:Lkze;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->F:Ljava/lang/String;

    new-instance v2, Llqh;

    invoke-direct {v2, p0}, Llqh;-><init>(Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;)V

    new-instance v3, Llqi;

    invoke-direct {v3, p0}, Llqi;-><init>(Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;)V

    invoke-interface {v0, v1, v2, v3}, Lkze;->b(Ljava/lang/String;Lkxl;Lkxl;)V

    .line 385
    :goto_0
    return-void

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->D:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v1, Laor;->CONTENT:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    goto :goto_0
.end method

.method public static synthetic h(Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->A:Landroid/widget/EditText;

    return-object v0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->M:Lmqc;

    new-instance v1, Llqj;

    invoke-direct {v1, p0}, Llqj;-><init>(Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;)V

    invoke-virtual {v0, v1}, Lmqc;->a(Lgkw;)V

    .line 406
    return-void
.end method

.method public static synthetic i(Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->B:Landroid/widget/EditText;

    return-object v0
.end method

.method private i()V
    .locals 6

    .prologue
    .line 443
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->j()Z

    move-result v0

    if-nez v0, :cond_1

    .line 478
    :cond_0
    :goto_0
    return-void

    .line 444
    :cond_1
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->b()V

    .line 446
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->D:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v1, Laor;->LOADING:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 449
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 451
    :try_start_0
    const-string v0, "X-Application-Key"

    invoke-static {}, Lmzx;->a()Lmzx;

    move-result-object v1

    invoke-virtual {v1}, Lmzx;->c()Ljava/util/Properties;

    move-result-object v1

    const-string v2, "appKey"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 452
    const-string v0, "Content-Type"

    const-string v1, "application/json"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 457
    :goto_1
    const/4 v1, 0x0

    .line 459
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    new-instance v0, Lejm;

    invoke-direct {v0}, Lejm;-><init>()V

    iget-object v2, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->G:Lkum;

    invoke-static {v2}, Lkum;->a(Lkum;)Lkum;

    move-result-object v2

    invoke-virtual {v0, v2}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 464
    :goto_2
    if-eqz v4, :cond_0

    .line 466
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v0

    sget-object v1, Lkwr;->SINISTER_BANK_DATA:Lkwr;

    invoke-virtual {v1}, Lkwr;->getEndpoint()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lim;->PUT:Lim;

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lgnp;->a(Ljava/lang/String;Lim;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)Lir;

    move-result-object v0

    .line 467
    new-instance v1, Lgnv;

    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->p()Lgkw;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lgnv;-><init>(Lgkw;Lir;)V

    .line 469
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v2

    invoke-virtual {v2}, Lgnp;->b()Lie;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 472
    :try_start_2
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v2

    invoke-virtual {v2}, Lgnp;->b()Lie;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lie;->a(Lir;Lih;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 473
    :catch_0
    move-exception v0

    .line 474
    const-string v1, "ERROR_SERV"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 453
    :catch_1
    move-exception v0

    .line 454
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 460
    :catch_2
    move-exception v0

    .line 461
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v4, v1

    goto :goto_2
.end method

.method public static synthetic j(Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;)Lmqc;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->M:Lmqc;

    return-object v0
.end method

.method private j()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 482
    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->y:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 483
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090465

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lmhj;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 502
    :goto_0
    return v0

    .line 487
    :cond_0
    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->z:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 488
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090447

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lmhj;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 492
    :cond_1
    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->A:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 493
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09044b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lmhj;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 497
    :cond_2
    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->B:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 498
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090446

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lmhj;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 502
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static synthetic k(Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;)Lkum;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->G:Lkum;

    return-object v0
.end method

.method private k()V
    .locals 5

    .prologue
    const v4, 0x7f090830

    const/4 v0, 0x0

    .line 506
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    .line 507
    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 508
    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 509
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020664

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 510
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 511
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 512
    const v2, 0x7f04039b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 513
    const v2, 0x7f100071

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 514
    invoke-virtual {p0, v4}, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 515
    return-void
.end method

.method private n()Lgkw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lgkw",
            "<",
            "Lis;",
            ">;"
        }
    .end annotation

    .prologue
    .line 659
    new-instance v0, Llpy;

    invoke-direct {v0, p0}, Llpy;-><init>(Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;)V

    return-object v0
.end method

.method private o()Lgkw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lgkw",
            "<",
            "Lis;",
            ">;"
        }
    .end annotation

    .prologue
    .line 691
    new-instance v0, Llpz;

    invoke-direct {v0, p0}, Llpz;-><init>(Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;)V

    return-object v0
.end method

.method private p()Lgkw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lgkw",
            "<",
            "Lis;",
            ">;"
        }
    .end annotation

    .prologue
    .line 718
    new-instance v0, Llqa;

    invoke-direct {v0, p0}, Llqa;-><init>(Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;)V

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    .line 641
    invoke-super {p0, p1, p2, p3}, Lgrs;->onActivityResult(IILandroid/content/Intent;)V

    .line 642
    invoke-static {p0}, Lgpu;->b(Landroid/app/Activity;)V

    .line 644
    const/16 v0, 0x22b8

    if-ne p1, v0, :cond_0

    .line 645
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 646
    const-string v0, "result"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lmkq;

    .line 648
    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->y:Landroid/widget/AutoCompleteTextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lmkq;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lmkq;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 655
    :cond_0
    :goto_0
    return-void

    .line 650
    :cond_1
    if-nez p2, :cond_0

    .line 652
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->y:Landroid/widget/AutoCompleteTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 519
    invoke-super {p0}, Lgrs;->onBackPressed()V

    .line 520
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 132
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 133
    const v0, 0x7f04012a

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->setContentView(I)V

    .line 134
    new-instance v0, Lkzf;

    invoke-direct {v0}, Lkzf;-><init>()V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->x:Lkze;

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->L:Ljava/util/ArrayList;

    .line 136
    new-instance v0, Lkum;

    invoke-direct {v0}, Lkum;-><init>()V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->G:Lkum;

    .line 137
    new-instance v0, Lmli;

    invoke-direct {v0}, Lmli;-><init>()V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->K:Lmli;

    .line 138
    new-instance v0, Lmqc;

    invoke-direct {v0, p0}, Lmqc;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->M:Lmqc;

    .line 140
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "sinister-code"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    new-instance v0, Lejm;

    invoke-direct {v0}, Lejm;-><init>()V

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "sinister-code"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lkve;

    invoke-virtual {v0, v1, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkve;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->H:Lkve;

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "bank-id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    new-instance v0, Lejm;

    invoke-direct {v0}, Lejm;-><init>()V

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "bank-id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->I:Ljava/lang/String;

    .line 148
    :cond_1
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "details_certificate_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 149
    new-instance v0, Lejm;

    invoke-direct {v0}, Lejm;-><init>()V

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "details_certificate_key"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->F:Ljava/lang/String;

    .line 152
    :cond_2
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "last-certificate-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 153
    new-instance v0, Lejm;

    invoke-direct {v0}, Lejm;-><init>()V

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "last-certificate-key"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->J:Ljava/lang/String;

    .line 158
    :cond_3
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->k()V

    .line 159
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->a()V

    .line 160
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->c()V

    .line 161
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 524
    invoke-super {p0}, Lgrs;->onDestroy()V

    .line 525
    return-void
.end method
