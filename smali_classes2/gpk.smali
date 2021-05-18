.class public Lgpk;
.super Landroid/app/DatePickerDialog;
.source "SourceFile"


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field public static final d:I = 0x4

.field public static final e:I = 0x5


# instance fields
.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private final j:Ljava/util/Calendar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V
    .locals 2

    .prologue
    .line 35
    invoke-direct/range {p0 .. p5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 37
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lgpk;->j:Ljava/util/Calendar;

    .line 39
    iget-object v0, p0, Lgpk;->j:Ljava/util/Calendar;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 42
    iget-object v0, p0, Lgpk;->j:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 43
    iget-object v0, p0, Lgpk;->j:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p4}, Ljava/util/Calendar;->set(II)V

    .line 44
    iget-object v0, p0, Lgpk;->j:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p5}, Ljava/util/Calendar;->set(II)V

    .line 50
    iget-object v0, p0, Lgpk;->j:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lnak;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnak;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgpk;->setTitle(Ljava/lang/CharSequence;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;IIII)V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 55
    invoke-direct/range {p0 .. p5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 57
    iput p6, p0, Lgpk;->f:I

    .line 58
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lgpk;->j:Ljava/util/Calendar;

    .line 59
    iget-object v0, p0, Lgpk;->j:Ljava/util/Calendar;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 62
    if-ne p6, v3, :cond_1

    .line 63
    iget-object v0, p0, Lgpk;->j:Ljava/util/Calendar;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 71
    :cond_0
    :goto_0
    iget-object v0, p0, Lgpk;->j:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lgpk;->g:I

    .line 72
    iget-object v0, p0, Lgpk;->j:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lgpk;->h:I

    .line 73
    iget-object v0, p0, Lgpk;->j:Ljava/util/Calendar;

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lgpk;->i:I

    .line 76
    iget-object v0, p0, Lgpk;->j:Ljava/util/Calendar;

    invoke-virtual {v0, v2, p3}, Ljava/util/Calendar;->set(II)V

    .line 77
    iget-object v0, p0, Lgpk;->j:Ljava/util/Calendar;

    invoke-virtual {v0, v3, p4}, Ljava/util/Calendar;->set(II)V

    .line 78
    iget-object v0, p0, Lgpk;->j:Ljava/util/Calendar;

    invoke-virtual {v0, v4, p5}, Ljava/util/Calendar;->set(II)V

    .line 84
    iget-object v0, p0, Lgpk;->j:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lnak;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnak;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgpk;->setTitle(Ljava/lang/CharSequence;)V

    .line 85
    return-void

    .line 64
    :cond_1
    const/4 v0, 0x3

    if-eq p6, v0, :cond_2

    const/4 v0, 0x4

    if-ne p6, v0, :cond_0

    .line 66
    :cond_2
    iget-object v0, p0, Lgpk;->j:Ljava/util/Calendar;

    invoke-virtual {v0, v2, p3}, Ljava/util/Calendar;->set(II)V

    .line 67
    iget-object v0, p0, Lgpk;->j:Ljava/util/Calendar;

    invoke-virtual {v0, v3, p4}, Ljava/util/Calendar;->set(II)V

    .line 68
    iget-object v0, p0, Lgpk;->j:Ljava/util/Calendar;

    invoke-virtual {v0, v4, p5}, Ljava/util/Calendar;->set(II)V

    goto :goto_0
.end method


# virtual methods
.method public onDateChanged(Landroid/widget/DatePicker;III)V
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 89
    .line 92
    iget v2, p0, Lgpk;->f:I

    if-ne v2, v1, :cond_4

    .line 93
    iget v2, p0, Lgpk;->g:I

    if-le p2, v2, :cond_2

    move v2, v0

    move v0, v1

    .line 124
    :goto_0
    if-nez v2, :cond_0

    if-eqz v0, :cond_1

    .line 125
    :cond_0
    iget p2, p0, Lgpk;->g:I

    .line 126
    iget p3, p0, Lgpk;->h:I

    .line 127
    iget p4, p0, Lgpk;->i:I

    .line 128
    invoke-virtual {p1, p2, p3, p4}, Landroid/widget/DatePicker;->updateDate(III)V

    .line 132
    :cond_1
    iget-object v0, p0, Lgpk;->j:Ljava/util/Calendar;

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 133
    iget-object v0, p0, Lgpk;->j:Ljava/util/Calendar;

    invoke-virtual {v0, v4, p3}, Ljava/util/Calendar;->set(II)V

    .line 134
    iget-object v0, p0, Lgpk;->j:Ljava/util/Calendar;

    invoke-virtual {v0, v5, p4}, Ljava/util/Calendar;->set(II)V

    .line 138
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lgpk;->j:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0}, Lnak;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnak;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgpk;->setTitle(Ljava/lang/CharSequence;)V

    .line 139
    return-void

    .line 96
    :cond_2
    iget v2, p0, Lgpk;->g:I

    if-ne p2, v2, :cond_8

    .line 97
    iget v2, p0, Lgpk;->h:I

    if-le p3, v2, :cond_3

    move v2, v0

    move v0, v1

    .line 98
    goto :goto_0

    .line 99
    :cond_3
    iget v2, p0, Lgpk;->h:I

    if-ne p3, v2, :cond_8

    .line 100
    iget v2, p0, Lgpk;->i:I

    if-le p4, v2, :cond_8

    move v2, v0

    move v0, v1

    .line 101
    goto :goto_0

    .line 105
    :cond_4
    iget v2, p0, Lgpk;->f:I

    if-eq v2, v4, :cond_5

    iget v2, p0, Lgpk;->f:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_5

    iget v2, p0, Lgpk;->f:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_5

    iget v2, p0, Lgpk;->f:I

    if-ne v2, v5, :cond_8

    .line 110
    :cond_5
    iget v2, p0, Lgpk;->g:I

    if-ge p2, v2, :cond_6

    move v2, v1

    .line 111
    goto :goto_0

    .line 112
    :cond_6
    iget v2, p0, Lgpk;->g:I

    if-ne p2, v2, :cond_8

    .line 113
    iget v2, p0, Lgpk;->h:I

    if-ge p3, v2, :cond_7

    move v2, v1

    .line 114
    goto :goto_0

    .line 115
    :cond_7
    iget v2, p0, Lgpk;->h:I

    if-ne p3, v2, :cond_8

    .line 116
    iget v2, p0, Lgpk;->i:I

    if-ge p4, v2, :cond_8

    move v2, v1

    .line 117
    goto :goto_0

    :cond_8
    move v2, v0

    goto :goto_0
.end method
