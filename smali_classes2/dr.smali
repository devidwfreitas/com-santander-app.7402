.class public Ldr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String; = null

.field public static final e:I = 0x385

.field public static final f:I = 0x386

.field public static final g:I = 0x387

.field public static final h:I = 0x388

.field public static final i:I = 0x389

.field public static final j:I = 0x38a

.field public static final k:I = 0x38b

.field public static final l:I = 0x38c

.field public static final m:I = 0x38d

.field public static final n:I = 0x38e

.field public static final o:I = 0x38f

.field public static final p:I = 0x390

.field public static final q:I = 0x391

.field public static final r:I = 0x392

.field public static final s:I = 0x393


# instance fields
.field b:F

.field c:I

.field d:Ljava/lang/StringBuffer;

.field private t:Ljava/lang/Object;

.field private u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private v:Ljava/lang/String;

.field private w:Ldt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    sput-object v0, Ldr;->a:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object v0, p0, Ldr;->t:Ljava/lang/Object;

    .line 90
    iput-object v0, p0, Ldr;->u:Ljava/util/List;

    .line 91
    iput-object v0, p0, Ldr;->v:Ljava/lang/String;

    .line 93
    iput-object v0, p0, Ldr;->w:Ldt;

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Ldr;->b:F

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Ldr;->c:I

    .line 98
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ldr;->d:Ljava/lang/StringBuffer;

    .line 83
    return-void
.end method

.method static synthetic a(Ldr;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Ldr;->t:Ljava/lang/Object;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 887
    .line 888
    const/4 v1, 0x0

    .line 887
    :try_start_0
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 889
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "aa"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 899
    :goto_0
    return-object v0

    .line 895
    :catch_0
    move-exception v1

    .line 896
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 936
    .line 937
    const/4 v0, 0x0

    .line 936
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 938
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 939
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ab"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 940
    invoke-static {v0}, Ldr;->a(Landroid/content/SharedPreferences$Editor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 945
    :goto_0
    return-void

    .line 942
    :catch_0
    move-exception v0

    .line 943
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static a(Landroid/content/SharedPreferences$Editor;)V
    .locals 3

    .prologue
    const v2, 0x186a0

    const/4 v0, 0x0

    .line 983
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v0

    .line 984
    :goto_0
    if-lt v1, v2, :cond_1

    .line 987
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v0

    .line 988
    :goto_1
    if-lt v1, v2, :cond_2

    .line 991
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    if-nez v1, :cond_0

    .line 992
    :goto_2
    if-lt v0, v2, :cond_3

    .line 994
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 998
    :cond_0
    return-void

    .line 984
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 988
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 992
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method static synthetic a(Ldr;Ldt;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Ldr;->w:Ldt;

    return-void
.end method

.method static synthetic a(Ldr;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Ldr;->u:Ljava/util/List;

    return-void
.end method

.method static synthetic b(Ldr;)Ldt;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Ldr;->w:Ldt;

    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 912
    .line 913
    const/4 v1, 0x0

    .line 912
    :try_start_0
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 914
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ab"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 925
    :goto_0
    return-object v0

    .line 920
    :catch_0
    move-exception v1

    .line 921
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 954
    .line 955
    const/4 v0, 0x0

    .line 954
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 956
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 957
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ab"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 958
    invoke-static {v0}, Ldr;->a(Landroid/content/SharedPreferences$Editor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 964
    :goto_0
    return-void

    .line 960
    :catch_0
    move-exception v0

    .line 961
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 972
    .line 973
    const/4 v0, 0x0

    .line 972
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 974
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 975
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "aa"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 976
    invoke-static {v0}, Ldr;->a(Landroid/content/SharedPreferences$Editor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 980
    :goto_0
    return-void

    .line 977
    :catch_0
    move-exception v0

    .line 978
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/Object;Ljava/util/List;Ljava/lang/String;Ldt;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ldt;",
            ")V"
        }
    .end annotation

    .prologue
    .line 162
    iput-object p3, p0, Ldr;->u:Ljava/util/List;

    .line 163
    iput-object p4, p0, Ldr;->v:Ljava/lang/String;

    .line 164
    iput-object p5, p0, Ldr;->w:Ldt;

    .line 165
    iput-object p2, p0, Ldr;->t:Ljava/lang/Object;

    .line 166
    new-instance v0, Lds;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lds;-><init>(Ldr;Lds;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/Context;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lds;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 168
    return-void
.end method
