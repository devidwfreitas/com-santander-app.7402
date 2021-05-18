.class public Lmii;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static A:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final B:Ljava/lang/String; = "micro"

.field public static final C:Ljava/lang/String; = "mini"

.field public static D:Ljava/lang/String;

.field public static E:Ljava/lang/String;

.field public static F:Ljava/lang/String;

.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;

.field public static h:Ljava/lang/String;

.field public static i:Ljava/lang/String;

.field public static j:Ljava/lang/String;

.field public static k:Ljava/lang/String;

.field public static l:Ljava/lang/String;

.field public static m:Ljava/lang/String;

.field public static n:Ljava/lang/String;

.field public static o:Ljava/lang/String;

.field public static p:Ljava/lang/String;

.field public static q:I

.field public static r:Ljava/lang/String;

.field public static s:Ljava/lang/String;

.field public static t:Ljava/lang/String;

.field public static u:Ljava/lang/String;

.field public static v:Ljava/lang/String;

.field public static w:Ljava/lang/String;

.field public static x:Ljava/lang/String;

.field public static y:Ljava/lang/String;

.field public static z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 28
    const-string v0, "image/"

    sput-object v0, Lmii;->a:Ljava/lang/String;

    .line 29
    const-string v0, "video/"

    sput-object v0, Lmii;->b:Ljava/lang/String;

    .line 30
    const-string v0, "audio/"

    sput-object v0, Lmii;->c:Ljava/lang/String;

    .line 31
    const-string v0, "text/"

    sput-object v0, Lmii;->d:Ljava/lang/String;

    .line 32
    const-string v0, "application/"

    sput-object v0, Lmii;->e:Ljava/lang/String;

    .line 33
    const-string v0, "application/pdf"

    sput-object v0, Lmii;->f:Ljava/lang/String;

    .line 35
    const-string v0, "content://downloads/public_downloads"

    sput-object v0, Lmii;->g:Ljava/lang/String;

    .line 37
    const-string v0, "primary"

    sput-object v0, Lmii;->h:Ljava/lang/String;

    .line 38
    const-string v0, "images"

    sput-object v0, Lmii;->i:Ljava/lang/String;

    .line 39
    const-string v0, "image"

    sput-object v0, Lmii;->j:Ljava/lang/String;

    .line 40
    const-string v0, "video"

    sput-object v0, Lmii;->k:Ljava/lang/String;

    .line 41
    const-string v0, "pdf"

    sput-object v0, Lmii;->l:Ljava/lang/String;

    .line 43
    const-string v0, "/"

    sput-object v0, Lmii;->m:Ljava/lang/String;

    .line 45
    const-string v0, "_id"

    sput-object v0, Lmii;->n:Ljava/lang/String;

    .line 46
    const-string v0, "_data"

    sput-object v0, Lmii;->o:Ljava/lang/String;

    .line 48
    const-string v0, "r"

    sput-object v0, Lmii;->p:Ljava/lang/String;

    .line 50
    const/4 v0, -0x1

    sput v0, Lmii;->q:I

    .line 52
    const-string v0, "content"

    sput-object v0, Lmii;->r:Ljava/lang/String;

    .line 53
    const-string v0, "media"

    sput-object v0, Lmii;->s:Ljava/lang/String;

    .line 54
    const-string v0, "file"

    sput-object v0, Lmii;->t:Ljava/lang/String;

    .line 56
    const-string v0, "com.android.providers.downloads.documents"

    sput-object v0, Lmii;->u:Ljava/lang/String;

    .line 57
    const-string v0, "com.android.externalstorage.documents"

    sput-object v0, Lmii;->v:Ljava/lang/String;

    .line 58
    const-string v0, "com.android.providers.media.documents"

    sput-object v0, Lmii;->w:Ljava/lang/String;

    .line 60
    const-string v0, "com.google.android.apps.docs.storage"

    sput-object v0, Lmii;->x:Ljava/lang/String;

    .line 62
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    sput-object v0, Lmii;->y:Ljava/lang/String;

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lmii;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DownloadCopyFile"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmii;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmii;->z:Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "jpg"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "png"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "bmp"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "jpeg"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "ico"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "gif"

    aput-object v3, v1, v2

    .line 68
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lmii;->A:Ljava/util/ArrayList;

    .line 74
    const-string v0, "file_chooser_preference_key"

    sput-object v0, Lmii;->D:Ljava/lang/String;

    .line 75
    const-string v0, "has_configured_data_key"

    sput-object v0, Lmii;->E:Ljava/lang/String;

    .line 76
    const-string v0, "cache_directory_key"

    sput-object v0, Lmii;->F:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
