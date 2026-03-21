from typing import List, Tuple, Dict, Any, Optional
import logging

logger = logging.getLogger(__name__)
if not logger.handlers:
    handler = logging.StreamHandler()
    formatter = logging.Formatter('%(levelname)s:%(name)s:%(message)s')
    handler.setFormatter(formatter)
    logger.addHandler(handler)
logger.setLevel(logging.INFO)


def safe_parse_ints(values: List[Any], default: Optional[int] = None) -> Tuple[List[int], List[Dict[str, Any]]]:
    """Safely parse a list of values to integers.

    - values: iterable of input values (typically strings from CSV).
    - default: if provided, append this value to the converted list when parsing fails.

    Returns (converted_list, errors) where errors is a list of dicts with keys: index, value, error.
    """
    converted: List[int] = []
    errors: List[Dict[str, Any]] = []

    for idx, raw in enumerate(values):
        try:
            if raw is None or (isinstance(raw, str) and raw.strip() == ""):
                raise ValueError("empty or missing value")
            # int() will raise ValueError for non-integer strings
            num = int(raw)
            converted.append(num)
        except (ValueError, TypeError) as exc:
            logger.warning("Failed to convert index %s value %r: %s", idx, raw, exc)
            errors.append({"index": idx, "value": raw, "error": str(exc)})
            if default is not None:
                converted.append(default)

    return converted, errors


if __name__ == "__main__":
    # Demo using the sample provided in the question
    sample = ["25", "30", "invalid", "35", ""]
    converted, errs = safe_parse_ints(sample)
    print("Converted values:", converted)
    print("Errors:")
    for e in errs:
        print(" - index {index}, value={value!r}, error={error}".format(**e))
