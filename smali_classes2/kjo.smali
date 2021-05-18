.class public Lkjo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static c:Ljava/lang/String;


# instance fields
.field private a:Lkjn;

.field private b:Lkjh;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:I

.field private j:Lkgm;

.field private k:I

.field private l:Ljava/lang/String;

.field private m:Lfvn;


# direct methods
.method public constructor <init>(Lkjn;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lkjo;->d:Ljava/lang/String;

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lkjo;->e:Ljava/lang/String;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lkjo;->f:Ljava/lang/String;

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lkjo;->g:Ljava/lang/String;

    .line 63
    iput-boolean v1, p0, Lkjo;->h:Z

    .line 66
    iput v1, p0, Lkjo;->k:I

    .line 67
    const-string v0, "RecargaProgramadaFragment"

    iput-object v0, p0, Lkjo;->l:Ljava/lang/String;

    .line 72
    iput-object p1, p0, Lkjo;->a:Lkjn;

    .line 73
    new-instance v0, Lkjh;

    invoke-direct {v0, p0}, Lkjh;-><init>(Lkjo;)V

    iput-object v0, p0, Lkjo;->b:Lkjh;

    .line 74
    return-void
.end method

.method static synthetic a(Lkjo;I)I
    .locals 0

    .prologue
    .line 54
    iput p1, p0, Lkjo;->i:I

    return p1
.end method

.method static synthetic a(Lkjo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lkjo;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lkjo;)Lkjn;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lkjo;->a:Lkjn;

    return-object v0
.end method

.method static synthetic a(Lkjo;Z)Z
    .locals 0

    .prologue
    .line 54
    iput-boolean p1, p0, Lkjo;->h:Z

    return p1
.end method

.method static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 54
    sput-object p0, Lkjo;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lkjo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lkjo;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lkjo;)Lkjh;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lkjo;->b:Lkjh;

    return-object v0
.end method

.method static synthetic c(Lkjo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lkjo;->f:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lkjo;)Lkgm;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lkjo;->j:Lkgm;

    return-object v0
.end method

.method static synthetic d(Lkjo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lkjo;->g:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lkjo;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lkjo;->o()V

    return-void
.end method

.method static synthetic e(Lkjo;)Landroid/app/DatePickerDialog$OnDateSetListener;
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lkjo;->p()Landroid/app/DatePickerDialog$OnDateSetListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lkjo;)Landroid/app/DatePickerDialog$OnDateSetListener;
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lkjo;->q()Landroid/app/DatePickerDialog$OnDateSetListener;

    move-result-object v0

    return-object v0
.end method

.method private o()V
    .locals 7

    .prologue
    .line 385
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    const-string v1, "dd/MM/yyyy"

    invoke-static {v0, v1}, Lnak;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 386
    iget-object v0, p0, Lkjo;->a:Lkjn;

    invoke-interface {v0}, Lkjn;->u()Ljava/lang/String;

    move-result-object v2

    .line 388
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v3, "dd/MM/yyyy"

    new-instance v4, Ljava/util/Locale;

    const-string v5, "pt"

    const-string v6, "BR"

    invoke-direct {v4, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 389
    if-eqz v1, :cond_0

    const-string v3, "-"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 390
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd"

    new-instance v4, Ljava/util/Locale;

    const-string v5, "pt"

    const-string v6, "BR"

    invoke-direct {v4, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 394
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 396
    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 397
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 398
    const/4 v0, 0x5

    const/4 v1, 0x1

    invoke-virtual {v3, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 403
    :goto_0
    invoke-static {v3}, Lkhz;->a(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    .line 405
    iget-object v1, p0, Lkjo;->a:Lkjn;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    const-string v3, "dd/MM/yyyy"

    invoke-static {v2, v3}, Lnak;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lkjn;->c(Ljava/lang/String;)V

    .line 407
    iget-object v1, p0, Lkjo;->a:Lkjn;

    invoke-interface {v1}, Lkjn;->q()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 418
    :goto_1
    invoke-static {v0}, Lkhz;->a(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    .line 420
    iget-object v1, p0, Lkjo;->a:Lkjn;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    const-string v2, "dd/MM/yyyy"

    invoke-static {v0, v2}, Lnak;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lkjn;->d(Ljava/lang/String;)V

    .line 426
    :goto_2
    return-void

    .line 400
    :cond_1
    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 422
    :catch_0
    move-exception v0

    .line 423
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/text/ParseException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 409
    :pswitch_0
    const/4 v1, 0x5

    const/4 v2, 0x7

    :try_start_1
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    goto :goto_1

    .line 412
    :pswitch_1
    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 407
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private p()Landroid/app/DatePickerDialog$OnDateSetListener;
    .locals 1

    .prologue
    .line 588
    new-instance v0, Lkjt;

    invoke-direct {v0, p0}, Lkjt;-><init>(Lkjo;)V

    return-object v0
.end method

.method private q()Landroid/app/DatePickerDialog$OnDateSetListener;
    .locals 1

    .prologue
    .line 639
    new-instance v0, Lkju;

    invoke-direct {v0, p0}, Lkju;-><init>(Lkjo;)V

    return-object v0
.end method


# virtual methods
.method public a()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 134
    new-instance v0, Lkjp;

    invoke-direct {v0, p0}, Lkjp;-><init>(Lkjo;)V

    return-object v0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 102
    iput p1, p0, Lkjo;->i:I

    .line 103
    iget-object v0, p0, Lkjo;->b:Lkjh;

    invoke-virtual {v0, p1}, Lkjh;->c(I)V

    .line 104
    return-void
.end method

.method public a(ILandroid/content/Intent;)V
    .locals 6

    .prologue
    .line 202
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 205
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 206
    iget-object v0, p0, Lkjo;->a:Lkjn;

    invoke-interface {v0}, Lkjn;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 208
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    const-string v1, "has_phone_number"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 211
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 213
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 214
    const-string v1, "data1"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 215
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 217
    invoke-static {v0}, Lkhz;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 219
    const-string v0, "number"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 220
    const-string v2, "ddd"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 222
    iget-object v2, p0, Lkjo;->a:Lkjn;

    invoke-interface {v2, v1, v0}, Lkjn;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v2, p0, Lkjo;->a:Lkjn;

    invoke-interface {v2, v1, v0}, Lkjn;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lkjo;->a:Lkjn;

    invoke-interface {v0}, Lkjn;->j()V

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    iget-object v0, p0, Lkjo;->a:Lkjn;

    const-string v1, ""

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lkjn;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lkjo;->a:Lkjn;

    invoke-interface {v0}, Lkjn;->j()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 234
    :catch_0
    move-exception v0

    .line 235
    iget-object v0, p0, Lkjo;->a:Lkjn;

    const-string v1, ""

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lkjn;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lkjo;->a:Lkjn;

    invoke-interface {v0}, Lkjn;->j()V

    goto :goto_0
.end method

.method public a(Lfvn;)V
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lkjo;->b:Lkjh;

    invoke-virtual {v0}, Lkjh;->a()V

    .line 113
    iget-object v0, p0, Lkjo;->b:Lkjh;

    invoke-virtual {v0}, Lkjh;->b()V

    .line 115
    iput-object p1, p0, Lkjo;->m:Lfvn;

    .line 117
    if-eqz p1, :cond_0

    .line 119
    invoke-direct {p0}, Lkjo;->o()V

    .line 121
    iget-object v0, p0, Lkjo;->b:Lkjh;

    invoke-virtual {p1}, Lfvn;->D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkjh;->a(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lkjo;->a:Lkjn;

    invoke-virtual {p1}, Lfvn;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lfvn;->m()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lkjn;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lkjo;->a:Lkjn;

    invoke-virtual {p1}, Lfvn;->D()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkjn;->a(Ljava/lang/String;)V

    .line 125
    iget-object v1, p0, Lkjo;->a:Lkjn;

    invoke-virtual {p1}, Lfvn;->t()Ljava/lang/String;

    move-result-object v0

    const-string v2, "s"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, v0}, Lkjn;->b(I)V

    .line 127
    iget-object v0, p0, Lkjo;->a:Lkjn;

    invoke-virtual {p1}, Lfvn;->u()Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    invoke-interface {v0, v1}, Lkjn;->a(Z)V

    .line 129
    iget-object v0, p0, Lkjo;->a:Lkjn;

    invoke-interface {v0}, Lkjn;->b()V

    .line 131
    :cond_0
    return-void

    .line 125
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lkjo;->a:Lkjn;

    invoke-interface {v0, p1}, Lkjn;->b(Ljava/lang/String;)V

    .line 363
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/santander/app/contacorrente/domain/Conta;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 366
    iget-object v0, p0, Lkjo;->a:Lkjn;

    invoke-interface {v0, p1}, Lkjn;->a(Ljava/util/List;)V

    .line 367
    return-void
.end method

.method public a(Ljava/util/Vector;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lfqa;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lkjo;->a:Lkjn;

    invoke-interface {v0, p1}, Lkjn;->a(Ljava/util/Vector;)V

    .line 161
    iget-object v0, p0, Lkjo;->j:Lkgm;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lkjo;->b:Lkjh;

    iget-object v1, p0, Lkjo;->j:Lkgm;

    invoke-virtual {v1}, Lkgm;->u()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lkjo;->i:I

    invoke-virtual {v0, v1, v2}, Lkjh;->a(Ljava/lang/String;I)V

    .line 165
    :cond_0
    iget-object v0, p0, Lkjo;->m:Lfvn;

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lkjo;->b:Lkjh;

    iget-object v1, p0, Lkjo;->m:Lfvn;

    invoke-virtual {v1}, Lfvn;->y()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lkjo;->i:I

    invoke-virtual {v0, v1, v2}, Lkjh;->a(Ljava/lang/String;I)V

    .line 169
    :cond_1
    iget-object v0, p0, Lkjo;->a:Lkjn;

    invoke-interface {v0}, Lkjn;->b()V

    .line 170
    iget-object v0, p0, Lkjo;->a:Lkjn;

    invoke-interface {v0}, Lkjn;->j()V

    .line 171
    return-void
.end method

.method public a(Lkgm;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 77
    iget-object v1, p0, Lkjo;->b:Lkjh;

    invoke-virtual {v1}, Lkjh;->a()V

    .line 78
    iget-object v1, p0, Lkjo;->b:Lkjh;

    invoke-virtual {v1}, Lkjh;->b()V

    .line 80
    iput-object p1, p0, Lkjo;->j:Lkgm;

    .line 82
    iget-object v1, p0, Lkjo;->a:Lkjn;

    invoke-interface {v1}, Lkjn;->y()V

    .line 83
    iget-object v1, p0, Lkjo;->a:Lkjn;

    invoke-interface {v1}, Lkjn;->x()V

    .line 84
    iget-object v1, p0, Lkjo;->a:Lkjn;

    invoke-interface {v1}, Lkjn;->z()V

    .line 86
    iget-object v1, p0, Lkjo;->a:Lkjn;

    iget-object v2, p0, Lkjo;->j:Lkgm;

    invoke-virtual {v2}, Lkgm;->g()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lkjn;->c(Ljava/lang/String;)V

    .line 87
    iget-object v1, p0, Lkjo;->a:Lkjn;

    iget-object v2, p0, Lkjo;->j:Lkgm;

    invoke-virtual {v2}, Lkgm;->f()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lkjn;->d(Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lkjo;->a:Lkjn;

    iget-object v2, p0, Lkjo;->j:Lkgm;

    invoke-virtual {v2}, Lkgm;->p()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lkjn;->a(Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lkjo;->a:Lkjn;

    iget-object v2, p0, Lkjo;->j:Lkgm;

    invoke-virtual {v2}, Lkgm;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lkjo;->j:Lkgm;

    invoke-virtual {v3}, Lkgm;->w()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lkjn;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v1, p0, Lkjo;->a:Lkjn;

    invoke-virtual {p1}, Lkgm;->r()Ljava/lang/String;

    move-result-object v2

    const-string v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-interface {v1, v0}, Lkjn;->b(I)V

    .line 94
    iget-object v0, p0, Lkjo;->a:Lkjn;

    invoke-virtual {p1}, Lkgm;->q()Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    invoke-interface {v0, v1}, Lkjn;->a(Z)V

    .line 96
    iget-object v0, p0, Lkjo;->b:Lkjh;

    invoke-virtual {p1}, Lkgm;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkjh;->a(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lkjo;->a:Lkjn;

    invoke-interface {v0}, Lkjn;->b()V

    .line 99
    return-void
.end method

.method public a(Lkic;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 689
    invoke-virtual {p1}, Lkic;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 690
    invoke-virtual {p1}, Lkic;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 692
    iget-object v1, p0, Lkjo;->a:Lkjn;

    aget-object v0, v0, v2

    invoke-interface {v1, v0}, Lkjn;->b(Ljava/lang/String;)V

    .line 704
    :goto_0
    iget-object v0, p0, Lkjo;->a:Lkjn;

    invoke-interface {v0}, Lkjn;->g()V

    .line 705
    return-void

    .line 694
    :cond_0
    iget-object v0, p0, Lkjo;->b:Lkjh;

    iget v1, p0, Lkjo;->i:I

    invoke-virtual {v0, v1}, Lkjh;->a(I)Lfvf;

    move-result-object v1

    .line 696
    invoke-virtual {v1}, Lfvf;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lkic;->a:Ljava/lang/String;

    .line 697
    iget-object v0, p0, Lkjo;->a:Lkjn;

    invoke-interface {v0}, Lkjn;->q()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "S"

    :goto_1
    iput-object v0, p1, Lkic;->e:Ljava/lang/String;

    .line 698
    invoke-virtual {v1}, Lfvf;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lkic;->b:Ljava/lang/String;

    .line 699
    invoke-virtual {v1}, Lfvf;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lkic;->d:Ljava/lang/String;

    .line 700
    invoke-virtual {v1}, Lfvf;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lkic;->c:Ljava/lang/String;

    .line 701
    iget-object v0, p0, Lkjo;->a:Lkjn;

    invoke-interface {v0, v2, p1}, Lkjn;->a(ILkic;)V

    goto :goto_0

    .line 697
    :cond_1
    const-string v0, "M"

    goto :goto_1
.end method

.method public b()Lkhj;
    .locals 1

    .prologue
    .line 144
    new-instance v0, Lkjv;

    invoke-direct {v0, p0}, Lkjv;-><init>(Lkjo;)V

    return-object v0
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lkjo;->a:Lkjn;

    invoke-interface {v0, p1}, Lkjn;->a(I)V

    .line 109
    return-void
.end method

.method public b(Ljava/util/Vector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lfqa;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Lkjo;->a:Lkjn;

    invoke-interface {v0, p1}, Lkjn;->b(Ljava/util/Vector;)V

    .line 175
    invoke-direct {p0}, Lkjo;->o()V

    .line 176
    return-void
.end method

.method public c()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 179
    new-instance v0, Lkjw;

    invoke-direct {v0, p0}, Lkjw;-><init>(Lkjo;)V

    return-object v0
.end method

.method public d()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 242
    new-instance v0, Lkjx;

    invoke-direct {v0, p0}, Lkjx;-><init>(Lkjo;)V

    return-object v0
.end method

.method public e()Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 1

    .prologue
    .line 256
    new-instance v0, Lkjy;

    invoke-direct {v0, p0}, Lkjy;-><init>(Lkjo;)V

    return-object v0
.end method

.method public f()Landroid/text/TextWatcher;
    .locals 1

    .prologue
    .line 273
    new-instance v0, Lkjz;

    invoke-direct {v0, p0}, Lkjz;-><init>(Lkjo;)V

    return-object v0
.end method

.method public g()Landroid/text/TextWatcher;
    .locals 1

    .prologue
    .line 296
    new-instance v0, Lkka;

    invoke-direct {v0, p0}, Lkka;-><init>(Lkjo;)V

    return-object v0
.end method

.method public h()Landroid/text/TextWatcher;
    .locals 1

    .prologue
    .line 318
    new-instance v0, Lkkb;

    invoke-direct {v0, p0}, Lkkb;-><init>(Lkjo;)V

    return-object v0
.end method

.method public i()Landroid/text/TextWatcher;
    .locals 1

    .prologue
    .line 340
    new-instance v0, Lkkc;

    invoke-direct {v0, p0}, Lkkc;-><init>(Lkjo;)V

    return-object v0
.end method

.method public j()Lnez;
    .locals 1

    .prologue
    .line 370
    new-instance v0, Lkjq;

    invoke-direct {v0, p0}, Lkjq;-><init>(Lkjo;)V

    return-object v0
.end method

.method public k()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 429
    new-instance v0, Lkjr;

    invoke-direct {v0, p0}, Lkjr;-><init>(Lkjo;)V

    return-object v0
.end method

.method public l()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 450
    new-instance v0, Lkjs;

    invoke-direct {v0, p0}, Lkjs;-><init>(Lkjo;)V

    return-object v0
.end method

.method public m()V
    .locals 8

    .prologue
    .line 471
    iget-object v0, p0, Lkjo;->a:Lkjn;

    invoke-interface {v0}, Lkjn;->f()V

    .line 472
    iget-object v0, p0, Lkjo;->b:Lkjh;

    iget v1, p0, Lkjo;->i:I

    invoke-virtual {v0, v1}, Lkjh;->a(I)Lfvf;

    move-result-object v3

    .line 473
    iget-object v0, p0, Lkjo;->b:Lkjh;

    iget-object v1, p0, Lkjo;->a:Lkjn;

    invoke-interface {v1}, Lkjn;->o()I

    move-result v1

    invoke-virtual {v0, v1}, Lkjh;->b(I)Lfuu;

    move-result-object v4

    .line 475
    invoke-virtual {v3}, Lfvf;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 477
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v0, "dd/MM/yyyy"

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 478
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyyMMdd"

    invoke-direct {v2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 479
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v0, "ddMMyy"

    invoke-direct {v6, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 486
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 488
    iget-object v7, p0, Lkjo;->a:Lkjn;

    invoke-interface {v7}, Lkjn;->u()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    .line 489
    invoke-virtual {v2, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 491
    iget-object v7, p0, Lkjo;->a:Lkjn;

    invoke-interface {v7}, Lkjn;->v()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 492
    invoke-virtual {v6, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 501
    :goto_0
    new-instance v6, Lkid;

    invoke-direct {v6}, Lkid;-><init>()V

    .line 502
    invoke-virtual {v4}, Lfuu;->getAgencia()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lkid;->b(Ljava/lang/String;)V

    .line 503
    const-string v7, "false"

    invoke-virtual {v6, v7}, Lkid;->c(Ljava/lang/String;)V

    .line 504
    iget-object v7, p0, Lkjo;->a:Lkjn;

    invoke-interface {v7}, Lkjn;->r()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lkid;->d(Ljava/lang/String;)V

    .line 505
    invoke-virtual {v4}, Lfuu;->getCuenta()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lkid;->f(Ljava/lang/String;)V

    .line 506
    invoke-virtual {v6, v2}, Lkid;->h(Ljava/lang/String;)V

    .line 507
    invoke-virtual {v6, v0}, Lkid;->i(Ljava/lang/String;)V

    .line 508
    invoke-virtual {v6, v1}, Lkid;->j(Ljava/lang/String;)V

    .line 509
    invoke-virtual {v6, v2}, Lkid;->k(Ljava/lang/String;)V

    .line 510
    const-string v0, "false"

    invoke-virtual {v6, v0}, Lkid;->l(Ljava/lang/String;)V

    .line 511
    iget-object v0, p0, Lkjo;->a:Lkjn;

    invoke-interface {v0}, Lkjn;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lkid;->o(Ljava/lang/String;)V

    .line 512
    invoke-virtual {v3}, Lfvf;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lkid;->s(Ljava/lang/String;)V

    .line 513
    invoke-virtual {v3}, Lfvf;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lkid;->t(Ljava/lang/String;)V

    .line 514
    invoke-virtual {v3}, Lfvf;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lkid;->u(Ljava/lang/String;)V

    .line 516
    iget-object v0, p0, Lkjo;->a:Lkjn;

    invoke-interface {v0}, Lkjn;->q()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "S"

    .line 517
    :goto_1
    invoke-virtual {v6, v0}, Lkid;->v(Ljava/lang/String;)V

    .line 519
    iget-object v0, p0, Lkjo;->a:Lkjn;

    invoke-interface {v0}, Lkjn;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "true"

    .line 520
    :goto_2
    invoke-virtual {v6, v0}, Lkid;->w(Ljava/lang/String;)V

    .line 522
    iget-object v0, p0, Lkjo;->a:Lkjn;

    invoke-interface {v0}, Lkjn;->p()I

    move-result v0

    aget-object v0, v5, v0

    invoke-virtual {v6, v0}, Lkid;->C(Ljava/lang/String;)V

    .line 524
    iget-object v0, p0, Lkjo;->b:Lkjh;

    invoke-virtual {v0, v6}, Lkjh;->a(Lkid;)V

    .line 525
    return-void

    .line 494
    :catch_0
    move-exception v0

    .line 495
    const-string v0, ""

    .line 496
    const-string v2, ""

    .line 497
    const-string v1, ""

    goto/16 :goto_0

    .line 516
    :cond_0
    const-string v0, "M"

    goto :goto_1

    .line 519
    :cond_1
    const-string v0, "false"

    goto :goto_2
.end method

.method public n()V
    .locals 8

    .prologue
    .line 529
    iget-object v0, p0, Lkjo;->b:Lkjh;

    iget v1, p0, Lkjo;->i:I

    invoke-virtual {v0, v1}, Lkjh;->a(I)Lfvf;

    move-result-object v3

    .line 530
    iget-object v0, p0, Lkjo;->b:Lkjh;

    iget-object v1, p0, Lkjo;->a:Lkjn;

    invoke-interface {v1}, Lkjn;->o()I

    move-result v1

    invoke-virtual {v0, v1}, Lkjh;->b(I)Lfuu;

    move-result-object v4

    .line 532
    invoke-virtual {v3}, Lfvf;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 534
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v0, "dd/MM/yyyy"

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 535
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyyMMdd"

    invoke-direct {v2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 536
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v0, "ddMMyy"

    invoke-direct {v6, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 543
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 545
    iget-object v7, p0, Lkjo;->a:Lkjn;

    invoke-interface {v7}, Lkjn;->u()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    .line 546
    invoke-virtual {v2, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 548
    iget-object v7, p0, Lkjo;->a:Lkjn;

    invoke-interface {v7}, Lkjn;->v()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 549
    invoke-virtual {v6, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 557
    :goto_0
    new-instance v6, Lkid;

    invoke-direct {v6}, Lkid;-><init>()V

    .line 558
    invoke-virtual {v3}, Lfvf;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lkid;->a(Ljava/lang/String;)V

    .line 559
    invoke-virtual {v4}, Lfuu;->getAgencia()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lkid;->b(Ljava/lang/String;)V

    .line 560
    iget-object v7, p0, Lkjo;->j:Lkgm;

    invoke-virtual {v7}, Lkgm;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lkid;->c(Ljava/lang/String;)V

    .line 561
    iget-object v7, p0, Lkjo;->a:Lkjn;

    invoke-interface {v7}, Lkjn;->r()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lkid;->d(Ljava/lang/String;)V

    .line 562
    invoke-virtual {v4}, Lfuu;->getCuenta()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lkid;->f(Ljava/lang/String;)V

    .line 563
    invoke-virtual {v6, v2}, Lkid;->h(Ljava/lang/String;)V

    .line 564
    invoke-virtual {v6, v0}, Lkid;->i(Ljava/lang/String;)V

    .line 565
    invoke-virtual {v6, v1}, Lkid;->j(Ljava/lang/String;)V

    .line 566
    invoke-virtual {v6, v2}, Lkid;->k(Ljava/lang/String;)V

    .line 567
    iget-object v0, p0, Lkjo;->j:Lkgm;

    invoke-virtual {v0}, Lkgm;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lkid;->l(Ljava/lang/String;)V

    .line 568
    iget-object v0, p0, Lkjo;->j:Lkgm;

    invoke-virtual {v0}, Lkgm;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lkid;->p(Ljava/lang/String;)V

    .line 569
    iget-object v0, p0, Lkjo;->j:Lkgm;

    invoke-virtual {v0}, Lkgm;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lkid;->q(Ljava/lang/String;)V

    .line 570
    iget-object v0, p0, Lkjo;->j:Lkgm;

    invoke-virtual {v0}, Lkgm;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lkid;->r(Ljava/lang/String;)V

    .line 571
    iget-object v0, p0, Lkjo;->a:Lkjn;

    invoke-interface {v0}, Lkjn;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lkid;->o(Ljava/lang/String;)V

    .line 572
    invoke-virtual {v3}, Lfvf;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lkid;->s(Ljava/lang/String;)V

    .line 573
    invoke-virtual {v3}, Lfvf;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lkid;->t(Ljava/lang/String;)V

    .line 574
    invoke-virtual {v3}, Lfvf;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lkid;->u(Ljava/lang/String;)V

    .line 576
    iget-object v0, p0, Lkjo;->a:Lkjn;

    invoke-interface {v0}, Lkjn;->q()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "S"

    .line 577
    :goto_1
    invoke-virtual {v6, v0}, Lkid;->v(Ljava/lang/String;)V

    .line 579
    iget-object v0, p0, Lkjo;->a:Lkjn;

    invoke-interface {v0}, Lkjn;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "true"

    .line 580
    :goto_2
    invoke-virtual {v6, v0}, Lkid;->w(Ljava/lang/String;)V

    .line 582
    iget-object v0, p0, Lkjo;->a:Lkjn;

    invoke-interface {v0}, Lkjn;->p()I

    move-result v0

    aget-object v0, v5, v0

    invoke-virtual {v6, v0}, Lkid;->C(Ljava/lang/String;)V

    .line 584
    iget-object v0, p0, Lkjo;->a:Lkjn;

    const/4 v1, 0x2

    invoke-interface {v0, v1, v6}, Lkjn;->a(ILkid;)V

    .line 585
    return-void

    .line 551
    :catch_0
    move-exception v0

    .line 552
    const-string v0, ""

    .line 553
    const-string v2, ""

    .line 554
    const-string v1, ""

    goto/16 :goto_0

    .line 576
    :cond_0
    const-string v0, "M"

    goto :goto_1

    .line 579
    :cond_1
    const-string v0, "false"

    goto :goto_2
.end method
